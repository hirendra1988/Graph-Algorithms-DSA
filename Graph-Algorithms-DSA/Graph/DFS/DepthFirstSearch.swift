//
//  DepthFirstSearch.swift
//  Graph-Algorithms-DSA
//
//  Created by Hirendra Sharma on 24/10/24.
//


/// Implements Depth-First Search (BFS) on an undirected graph.
// Please refer to the DFSProblem.png screenshot for the BFS problem.

class DepthFirstSearch {
    private var adjacencyList: [[Int]]
    private var vertexCount: Int

    init(vertexCount: Int) {
        self.vertexCount = vertexCount
        self.adjacencyList = Array(repeating: [Int](), count: vertexCount)
    }
    
    func runTest() {
        createUndirectedGraph()
        var visited = [Bool](repeating: false, count: vertexCount)
        dfs(startVertex: 0, visited: &visited)
        //display()
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
    
    private func dfs(startVertex: Int, visited: inout [Bool]) {
        print(startVertex, terminator: " -> ")
        visited[startVertex] = true
        for neighbor in self.adjacencyList[startVertex] {
            if !visited[neighbor] {
                visited[neighbor] = true
                dfs(startVertex: neighbor, visited: &visited)
            }
        }
    }
}
