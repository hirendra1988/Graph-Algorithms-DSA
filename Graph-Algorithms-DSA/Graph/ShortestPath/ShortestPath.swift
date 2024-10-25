//
//  ShortestPath.swift
//  Graph-Algorithms-DSA
//
//  Created by Hirendra Sharma on 25/10/24.
//

/// Implements Breadth-First Search (BFS) to find the shortest path in an undirected graph.
// Please refer to the ShortestPath.png screenshot for the this problem.

class ShortestPath {
    private var adjacencyList: [[Int]]
    private var vertexCount: Int

    init(vertexCount: Int) {
        self.vertexCount = vertexCount
        self.adjacencyList = Array(repeating: [Int](), count: vertexCount)
    }
    
    func runTest() {
        createUndirectedGraph()
        let startVertex = 0   // Set your starting vertex
        let targetVertex = 3  // Set the vertex you want to know the distance to
        let distances = shortestPath(startVertex: startVertex)

        // Access the distance for the specific target vertex
        if distances[targetVertex] != Int.max {
            print("The shortest distance from vertex \(startVertex) to vertex \(targetVertex) is \(distances[targetVertex])")
        } else {
            print("Vertex \(targetVertex) is not reachable from vertex \(startVertex)")
        }
    }
    
    private func addUEdge(u: Int, v: Int) {
        self.adjacencyList[u].append(v)
        self.adjacencyList[v].append(u)
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
    
    /// This method finds the shortest path from a given starting vertex to all other vertices.
    /// - Parameters:
    ///   - startVertex: The starting vertex for BFS traversal.
    ///   - vertexCount: The total
    private func shortestPath(startVertex: Int) -> [Int] {
        var visited = [Bool](repeating: false, count: vertexCount)
        visited[startVertex] = true
        var queue = [startVertex]
        var distance = [Int](repeating: Int.max, count: vertexCount)
        distance[0] = 0 // Starting vertex has a distance of 0 from itself
        
        while !queue.isEmpty {
            let currentVertex = queue.removeFirst()
            for neighbor in self.adjacencyList[currentVertex] {
                if !visited[neighbor] {
                    visited[neighbor] = true
                    queue.append(neighbor)
                    distance[neighbor] = distance[currentVertex] + 1 // Update the distance for the neighbor vertex
                }
            }
        }
        // Print the shortest distances from the start vertex to all vertices
        print("Shortest distances from vertex \(startVertex): \(distance)")
        return distance
    }
    
}
