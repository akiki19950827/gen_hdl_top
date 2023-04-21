import re
from gen_hdl_lib.VerilogSig import VerilogPort, VerilogSig

class VerilogModule:
    def __init__(self, module_name, is_top=False):
        self.module_name = module_name
        self.ports = {}
        self.sigs = {}
        self.insts = {}
        self.is_top = is_top
        self.comments = {}
        self.blocks = {}
    
    def remove_no_connection_port_and_sig(self):
        connections_keys = set()
        for inst in self.insts.values():
            for connection in inst.connections.values():
                connections_keys.add(connection)
        sig_keys = set(self.sigs.keys())
        port_keys = set(self.ports.keys())
        diff_keys = sig_keys - connections_keys
        self.sigs = {k: v for k, v in self.sigs.items() if k not in diff_keys}
        diff_keys = port_keys - connections_keys
        self.ports = {k: v for k, v in self.ports.items() if k not in diff_keys}

    def remove_sigs_from_ports(self):
        for key in self.sigs:
            if key in self.ports:
                self.ports.pop(key)

    def connect_finish(self):
        self.remove_no_connection_port_and_sig()
        self.remove_sigs_from_ports()
        if self.is_top:
            self.covert_ports_to_sigs()

    def covert_ports_to_sigs(self):
        for port in self.ports.values():
            self.sigs[port.name] = port
            self.sigs[port.name].type = "logic"
            # self.add_sig(port.name, port.width, "logic")
        self.ports.clear()

    def __str__(self):
        # self.remove_unused_ports_and_sigs()
        self_comments = self.comments.get(self, self.comments.get(self.module_name, []))
        ports_str = ''.join(str(port) for port in self.ports.values())
        sigs_str = ''
        for sig in self.sigs.values():
            if isinstance(sig, VerilogPort):
                sig_str = str(VerilogSig(sig.parent, sig.type, sig.width, sig.name)).rstrip() + f" // {sig.direction}\n"
            else:
                sig_str = str(sig)
            sigs_str += sig_str

        uvm_blocks = self.blocks.get("USE_UVM", [])
        uvm_str = ''.join(block for block in uvm_blocks)
        
        com_blocks = self.blocks.get("COM", [])
        com_str = ''.join(block for block in com_blocks)

        insts_str = []
        for inst in self.insts.values():
            inst_comments = self.comments.get(inst, [])
            pre_inst_blocks = self.blocks.get("pre"+inst.inst_name, [])
            post_inst_blocks = self.blocks.get("post"+inst.inst_name, [])

            insts_str.append(''.join(inst_comments))
            insts_str.append(''.join(pre_inst_blocks))
            insts_str.append(str(inst)+"\n")
            insts_str.append(''.join(post_inst_blocks))

        return '\n'.join(self_comments + [
            f"module {self.module_name};",
            ports_str,
            sigs_str,
            uvm_str,
            com_str,
            ''.join(insts_str),
            "endmodule"
        ])

    def add_port(self, port_name, direction="input", width=1, type="wire"):
        self.ports[port_name] = VerilogPort(self, port_name, direction, width, type)

    def add_sig(self, sig_name, width=1, type="wire"):
        self.sigs[sig_name] = VerilogSig(self, type, width, sig_name)

    def add_inst(self, inst_name, type):
        self.insts[inst_name] = VerilogInstance(type, inst_name, self)
        return self.insts[inst_name]

    def find_port(self, port_name):
        return self.ports.get(port_name)
    
    def add_comment(self, key, comment):
        # 将多行注释按照换行符分割成一个列表
        lines = comment.split('\n')
        if len(lines) == 1:
            self.comments.setdefault(key, []).extend([f"// {line}\n" for line in lines])
        else:
            self.comments.setdefault(key, []).extend([f"// {line}" for line in lines])
        self.comments[key].append('')

    def add_block(self, key, exp:str):
        self.blocks.setdefault(key, []).extend(f"{exp}")


class VerilogInstance:
    def __init__(self, module: VerilogModule, inst_name: str, parent: VerilogModule=None):
        self.module = module
        self.inst_name = inst_name
        self.parent = parent
        self.connections = {}
    
    def add_comment(self, comment):
        self.parent.add_comment(self, comment)

    def connect(self, port_name, sig_name):
        if self.module.find_port(port_name):
            self.connections[port_name] = sig_name
            # 如果有'.'说明是模块内信号，不用添加到parent.sig或parent.port中
            if "." in sig_name:
                return
            # 检查顶层是否有该port
            # |--> 如果有，说明该port之前被添加过
            # |      |--> 检查该顶层port的方向和模块port的方向是否一致
            # |      |      |--> 一致，不用修改
            # |      |      |--> 不一致，说明是纯连接信号，作为sig添加
            # |--> 没有，未添加port，添加之
            parent_port = self.parent.ports.get(sig_name)
            self_port = self.module.ports.get(port_name)
            if parent_port:
                if parent_port.direction != self_port.direction:
                    self.parent.add_sig(sig_name, self_port.width, "logic")
            else:
                self.parent.add_port(sig_name, self_port.direction, self_port.width)

    def connect_by_re(self, port_name_pattern: str, sig_name_pattern: str) -> None:
        for port_name in self.module.ports:
            match_port = re.match(port_name_pattern, port_name)
            if match_port:
                sig_name = sig_name_pattern
                for i in range(1, match_port.lastindex+1):
                    sig_name = sig_name.replace(
                        '&'+str(i), match_port.group(i))
                self.connect(port_name, sig_name)

    def __str__(self) -> str:
        s = f"    {self.module.module_name} {self.inst_name} (\n"
        count = 0
        for (port_name, sig_name) in self.connections.items():
            count += 1
            if count == len(self.connections):
                s += f"{' '*8}.{port_name}({sig_name})"
            else:
                s += f"{' '*8}.{port_name}({sig_name}),\n"
        s += ");\n"
        return s


def parse_verilog(verilog_file):
    with open(verilog_file, 'r') as f:
        verilog_code = f.read()

    # 提取模块名称
    module_name_match = re.search(r'module\s+(\w+)\s*\(', verilog_code)
    if not module_name_match:
        raise ValueError(f"未找到模块名称")
    module_name = module_name_match.group(1)

    # 提取输入输出端口及其位宽
    port_pattern = r'\s*(input|output)\s+(wire|reg|logic|bit)?\s*(\[(\d+):(\d+)\])?\s*(\w+)'
    ports_matches = re.findall(port_pattern, verilog_code)
    verilog_module = VerilogModule(module_name)
    for direction, type, width_range, high, low, port_name in ports_matches:
        if type == "":
            type = "wire"
        if width_range != '':
            width = int(high) - int(low) + 1
        else:
            width = 1
        verilog_module.add_port(port_name, direction, width, type)
    return verilog_module

