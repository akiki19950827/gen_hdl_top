class Node:
    def __init__(self, x, y):
        self.x = x
        self.y = y
        self.north = None
        self.south = None
        self.east = None
        self.west = None
    
    def __str__(self):
        return f"Node({self.x}, {self.y})"
    
    def link(self, other):
        if other.x == self.x - 1 and other.y == self.y:
            self.north = other
            other.south = self
        elif other.x == self.x + 1 and other.y == self.y:
            self.south = other
            other.north = self
        elif other.x == self.x and other.y == self.y - 1:
            self.west = other
            other.east = self
        elif other.x == self.x and other.y == self.y + 1:
            self.east = other
            other.west = self


class UndirectedGraph:
    def __init__(self, row, col):
        self.row = row
        self.col = col
        self.matrix = [[Node(x, y) for y in range(col)] for x in range(row)]
        for x in range(row):
            for y in range(col):
                if x > 0:
                    self.matrix[x][y].link(self.matrix[x-1][y])
                if x < row - 1:
                    self.matrix[x][y].link(self.matrix[x+1][y])
                if y > 0:
                    self.matrix[x][y].link(self.matrix[x][y-1])
                if y < col - 1:
                    self.matrix[x][y].link(self.matrix[x][y+1])
    
    def __str__(self):
        res = []
        for x in range(self.row):
            for y in range(self.col):
                obj = self.matrix[x][y]
                res.append(f"Node({obj.x}, {obj.y}): north={obj.north}, south={obj.south}, east={obj.east}, west={obj.west}")
        return "\n".join(res)

if __name__ == "__main__":
    matrix = UndirectedGraph(3, 4)
    print(matrix)
