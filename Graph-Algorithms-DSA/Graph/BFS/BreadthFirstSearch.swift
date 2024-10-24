//
//  BFS.swift
//  Graph-Algorithms-DSA
//
//  Created by Hirendra Sharma on 23/10/24.
//

/// Implements Breadth-First Search (BFS) on an undirected graph.
// Please refer to the BFSProblem.png screenshot for the BFS problem.

class BreadthFirstSearch {
    // A 2D array to represent the adjacency list of the graph.
    private var adjacencyList: [[Int]]
    private let vertexCount: Int

    init(vertexCount: Int) {
        self.vertexCount = vertexCount
        self.adjacencyList = Array(repeating: [Int](), count: vertexCount)
    }

    func runTest() {
        createUndirectedGraph() // Creates the undirected graph by adding edges.
        bfs(startVertex: 0) // Initiates BFS traversal from the first vertex (0).
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

    // Performs BFS traversal starting from a specified vertex.
    private func bfs(startVertex: Int) {
        var queue = [startVertex]
        var visited = [Bool](repeating: false, count: vertexCount)
        visited[startVertex] = true

        while !queue.isEmpty {
            // Dequeues the first vertex from the queue.
            let currentVertex = queue.removeFirst()
            print("\(currentVertex) -> ", terminator: "")

            // Iterates over all neighbors of the current vertex.
            for neighbor in adjacencyList[currentVertex] {
                if !visited[neighbor] {
                    visited[neighbor] = true
                    queue.append(neighbor)
                }
            }
        }
    }

    // Adds an undirected edge between two vertices in the graph.
    private func addUEdge(u: Int, v: Int) {
        adjacencyList[u].append(v) // Adds v to u's list of neighbors.
        adjacencyList[v].append(u) // Adds u to v's list of neighbors.
    }

    func displayGraph() {
        for (index, neighbors) in adjacencyList.enumerated() {
            print("\(index) | ", terminator: "")
            print(neighbors.map { "\($0)" }.joined(separator: " -> "), terminator: "")
            print("")
        }
        print("\n")
    }
}
