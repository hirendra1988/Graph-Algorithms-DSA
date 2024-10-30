//
//  DetectCycle.swift
//  Graph-Algorithms-DSA
//
//  Created by Hirendra Sharma on 29/10/24.
//

//Detect cycle in a undirected graph (using DFS)

class DetectCycle {
    private var adjacencyList: [[Int]]
    private var vertexCount: Int

    init(vertexCount: Int) {
        self.vertexCount = vertexCount
        self.adjacencyList = Array(repeating: [Int](), count: vertexCount)
    }
    
    func runTest() {
        createUndirectedGraph()
        var visited = [Bool](repeating: false, count: vertexCount)
        let isCycleExist = hasCycle(u: 0, visited: &visited, parent: -1)
        print(isCycleExist)
    }

    // Creates an undirected graph by adding edges between vertices.
    private func createUndirectedGraph() {
        // Defines a list of edges in the graph.
        let edges = [
            (0, 1), (1, 2), (2, 3), (3, 4), (4, 6), (6, 5), (5, 4)
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
    
    func hasCycle(u: Int, visited: inout [Bool], parent: Int) -> Bool {
        visited[u] = true
        for i in self.adjacencyList[u] {
            if !visited[i] {
                if hasCycle(u: i, visited: &visited, parent: u) {
                    return true
                }
            } else if i != parent {
                return true
            }
        }
        return false
    }
    
}
