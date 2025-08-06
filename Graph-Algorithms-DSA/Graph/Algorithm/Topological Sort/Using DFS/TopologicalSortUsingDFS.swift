//
//  TopologicalSortUsingDFS.swift
//  Graph-Algorithms-DSA
//
//  Created by Hirendra Sharma on 01/11/24.
//

class TopologicalSortUsingDFS {
    private var adjacencyList = [[Int]]()
    private var vertexCount: Int
    
    init(vertexCount: Int) {
        self.adjacencyList = [[Int]](repeating: [Int](), count: vertexCount)
        self.vertexCount = vertexCount
    }
    
    func runTest() {
        createDirectedGraph()
        topologicalSort()
    }
    
    private func createDirectedGraph() {
        let edges = [
            (0,2),(0,3),(2,3),(1,3),(1,4)
        ]
        for (u, v) in edges {
            addDEdge(u: u, v: v)
        }
    }
    
    private func addDEdge(u: Int, v: Int) {
        self.adjacencyList[u].append(v)
    }
    
    private func display() {
        for i in 0..<vertexCount {
            print("\(i) | ", terminator: " ")
            for node in self.adjacencyList[i] {
                print("\(node)", terminator: " -> ")
            }
            print("")
        }
        print("\n")
    }
    
    // MARK: Topological sort using DFS
    func topologicalSort() {
        var stack = [Int]()
        var visited = [Bool](repeating: false, count: vertexCount)
        for i in 0..<vertexCount {
            if !visited[i] {
                dfs(u: i, stack: &stack, visited: &visited)
            }
        }
        
        while !stack.isEmpty {
            print(stack.popLast()!, terminator: " -> ")
        }
    }
    
    func dfs(u: Int, stack: inout [Int], visited: inout [Bool]) {
        visited[u] = true
        for node in self.adjacencyList[u] {
            if !visited[node] {
                dfs(u: node, stack: &stack, visited: &visited)
            }
        }
        stack.append(u)
    }
}
