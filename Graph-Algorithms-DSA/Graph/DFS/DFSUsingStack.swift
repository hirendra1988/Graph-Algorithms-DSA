//
//  DFSUsingStack.swift
//  Graph-Algorithms-DSA
//
//  Created by Hirendra Sharma on 28/10/24.
//

class DFSUsingStack {
    private var adjacencyList: [[Int]]
    private var vertexCount: Int

    init(vertexCount: Int) {
        self.vertexCount = vertexCount
        self.adjacencyList = Array(repeating: [Int](), count: vertexCount)
    }
    
    func runTest() {
        createUndirectedGraph()
        dfsUsingStack(u: 0)
    }

    // Creates an undirected graph by adding edges between vertices.
    private func createUndirectedGraph() {
        // Defines a list of edges in the graph.
        let edges = [
            (0, 1), (0, 2), (1, 2), (1, 3), (2, 4), (2, 3), (3, 4), (3, 5), (4, 5)
        ]
        // Adds each edge to the adjacency list.
        for (u, v) in edges {
            addUEdge(u: u, v: v)
        }
    }
    
    private func addUEdge(u: Int, v: Int) {
        self.adjacencyList[u].append(v)
        self.adjacencyList[v].append(u)
    }
    
    private func display() {
        for i in 0..<vertexCount {
            print("\(i) | ", terminator: " ")
            for neighbor in self.adjacencyList[i] {
                print("\(neighbor)", terminator: " -> ")
            }
            print("")
        }
        print("\n")
    }
    
    func dfsUsingStack(u: Int) {
        var visited = [Bool](repeating: false, count: vertexCount)
        visited[u] = true
        print(u, terminator: " -> ")
        var s = [u]
        
        while !s.isEmpty {
            let lastElement = s.last!
            let y = getUnvisitedNode(u: lastElement, visited: &visited)
            if y != -1 {
                visited[y] = true
                s.append(y)
                print(y, terminator: " -> ")
            } else {
                s.removeLast()
            }
        }
    }
    
    func getUnvisitedNode(u: Int, visited: inout [Bool]) -> Int {
        for neighbor in self.adjacencyList[u] {
            if !visited[neighbor] {
                return neighbor
            }
        }
        return -1
    }
}
