//
//  BFS.swift
//  Graph-Algorithms-DSA
//
//  Created by Hirendra Sharma on 23/10/24.
//

/// Implements Breadth-First Search (BFS) on an undirected graph.
// Please refer to the BFS.png screenshot for the BFS problem.

class BreadthFirstSearch {
    // A 2D array to represent the adjacency list of the graph.
    private var adjacencyList: [[Int]]
    private let vertexCount: Int

    init(vertexCount: Int) {
        self.vertexCount = vertexCount
        self.adjacencyList = Array(repeating: [Int](), count: vertexCount)
    }

    // Method to run the BFS test by creating a graph and starting the BFS traversal.
    func runTest() {
        createUndirectedGraph() // Creates the undirected graph by adding edges.
        // displayGraph() // Uncomment to display the graph structure.
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
            addEdge(u: u, v: v)
        }
    }

    // Performs BFS traversal starting from a specified vertex.
    private func bfs(startVertex: Int) {
        var queue = [startVertex] // Initializes the queue with the starting vertex.
        // Array to keep track of visited vertices.
        var visited = [Bool](repeating: false, count: vertexCount)
        visited[startVertex] = true // Marks the starting vertex as visited.

        while !queue.isEmpty {
            // Dequeues the first vertex from the queue.
            let currentVertex = queue.removeFirst()
            print("\(currentVertex) -> ", terminator: "") // Prints the current vertex.

            // Iterates over all neighbors of the current vertex.
            for neighbor in adjacencyList[currentVertex] where !visited[neighbor] {
                visited[neighbor] = true // Marks the neighbor as visited.
                queue.append(neighbor) // Adds the neighbor to the queue for exploration.
            }
        }
    }

    // Adds an undirected edge between two vertices in the graph.
    private func addEdge(u: Int, v: Int) {
        adjacencyList[u].append(v) // Adds v to u's list of neighbors.
        adjacencyList[v].append(u) // Adds u to v's list of neighbors.
    }

    // Displays the current structure of the graph as an adjacency list.
    func displayGraph() {
        for (index, neighbors) in adjacencyList.enumerated() {
            print("\(index) | ", terminator: "") // Prints the vertex index.
            print(neighbors.map { "\($0)" }.joined(separator: " -> "), terminator: "") // Prints neighbors.
            print("") // Moves to the next line.
        }
        print("\n") // Adds a new line for better formatting.
    }
}
