class VerilogSig:
    def __init__(self, parent, type, width, name):
        self.type = type
        self.width = width
        self.name = name
        self.parent = parent

    def __str__(self) -> str:
        s = f"{' '*4}{self.type} "
        if self.width > 1:
            s += f"[{self.width-1}:0] "
        s += f"{self.name};\n"
        return s


class VerilogPort(VerilogSig):
    def __init__(self, parent, name, direction="input", width=1, type="wire"):
        super().__init__(parent, type, width, name)
        self.direction = direction

    def __str__(self) -> str:
        return f"{' '*4}{self.direction} {self.type} {f'[{self.width-1}:0] ' if self.width > 1 else ''}{self.name};\n"

if __name__ == "__main__":
    sigs = {}
    a_port = VerilogPort(None, "a_port", "inout", 1, "logic")
    sigs["b"] = VerilogSig(None, "wire", 1, "b")
    sigs["a"] = a_port
    a_sig: VerilogSig = a_port
    a_port_bk: VerilogPort = a_sig