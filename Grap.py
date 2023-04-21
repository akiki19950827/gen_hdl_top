from typing import List

class UndirectedGraph:
    class Node:
        def __init__(self, x, y):
            self.x = x
            self.y = y
            self.north = None
            self.west = None
            self.south = None
            self.east = None

        def __str__(self):
            return f"Node({self.x}, {self.y})"

    def __init__(self, rows: int, cols: int):
        self.matrix: List[List[UndirectedGraph.Node]] = [[None] * cols for _ in range(rows)]
        for i in range(rows):
            for j in range(cols):
                node = UndirectedGraph.Node(i, j)
                self.matrix[i][j] = node
                if i > 0:
                    node.north = self.matrix[i-1][j]
                    self.matrix[i-1][j].south = node
                if j > 0:
                    node.west = self.matrix[i][j-1]
                    self.matrix[i][j-1].east = node
    
    def __str__(self):
        res = []
        for x in range(len(self.matrix)):
            for y in range(len(self.matrix[0])):
                obj = self.matrix[x][y]
                res.append(f"Node({obj.x}, {obj.y}): north={obj.north}, south={obj.south}, east={obj.east}, west={obj.west}")
        return "\n".join(res)

if __name__ == "__main__":
    matrix = UndirectedGraph(3, 4)
    print(matrix)
