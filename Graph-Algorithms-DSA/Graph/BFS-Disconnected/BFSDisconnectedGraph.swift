//
//  BFSDisconnectedGraph.swift
//  Graph-Algorithms-DSA
//
//  Created by Hirendra Sharma on 26/10/24.
//

/// Implements Breadth-First Search (BFS) to find the total number of disconnected components in a graph.
// Please refer to the DisconnectedComponent.png screenshot for the this problem.

class BFSDisconnectedGraph {
    private var adjacencyList = [[Int]]()
    private var vertexCount: Int
    
    init(vertexCount: Int) {
        self.adjacencyList = Array(repeating: [Int](), count: vertexCount)
        self.vertexCount = vertexCount
    }
    
    func runTest() {
        createUndirectedGraph()
        disconnectedGraph()
    }
    
    private func createUndirectedGraph() {
        addUEdge(u: 0, v: 1)
        addUEdge(u: 1, v: 2)
        addUEdge(u: 1, v: 3)
        addUEdge(u: 2, v: 3)
        addUEdge(u: 3, v: 4)
        
        addUEdge(u: 5, v: 6)
        addUEdge(u: 5, v: 7)
        addUEdge(u: 6, v: 7)
    }
    
    private func addUEdge(u: Int, v: Int) {
        self.adjacencyList[u].append(v)
        self.adjacencyList[v].append(u)
    }
    
    private func display() {
        for i in 0..<vertexCount {
            print("\(i) | ", terminator: " ")
            for j in self.adjacencyList[i] {
                print("\(j)", terminator: " -> ")
            }
            print("")
        }
        print("\n")
    }
    
    private func disconnectedGraph() {
        var visited = [Bool](repeating: false, count: vertexCount)
        var count = 0
        for i in 0..<vertexCount {
            if !visited[i] {
                bfs(u: i, visited: &visited)
                count += 1 // Increment count for each disconnected component
            }
        }
        print(count)
    }
    
    private func bfs(u: Int, visited: inout [Bool]) {
        visited[u] = true
        var queue = [u]
        
        while !queue.isEmpty {
            let currentVertex = queue.removeFirst()
            for node in self.adjacencyList[currentVertex] {
                if !visited[node] {
                    visited[node] = true
                    queue.append(node)
                }
            }
        }
    }
}
