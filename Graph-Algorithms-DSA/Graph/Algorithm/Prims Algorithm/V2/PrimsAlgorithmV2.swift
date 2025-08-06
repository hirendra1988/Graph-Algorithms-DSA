//
//  PrimsAlgorithmV2.swift
//  Graph-Algorithms-DSA
//
//  Created by Hirendra Sharma on 04/11/24.
//

class PrimsAlgorithmV2 {
    class GraphNode {
        var vertex: Int
        var weight: Int
        init(vertex: Int, weight: Int) {
            self.vertex = vertex
            self.weight = weight
        }
    }
    
    private var adjacencyList = [[GraphNode]]()
    private var vertexCount: Int
    
    init(vertexCount: Int) {
        self.adjacencyList = [[GraphNode]](repeating: [GraphNode](), count: vertexCount)
        self.vertexCount = vertexCount
    }
    
    func runTest() {
        createUndirectedWeightedGraph()
        primsAlgorithm(u: 0)
    }
    
    private func createUndirectedWeightedGraph() {
        let edges = [
            (0,3,2),(0,4,8), (0,1,9),
            (1,3,5), (1,4,5), (1,2,10), (1,5,2),
            (2,4,3), (2,5,1),
            (3,4,7),
            (4,5,4)
        ]
        for (u, v, w) in edges {
            addUEdge(u: u, v: v, w: w)
        }
    }
    
    private func addUEdge(u: Int, v: Int, w: Int) {
        self.adjacencyList[u].append(GraphNode(vertex: v, weight: w))
        self.adjacencyList[v].append(GraphNode(vertex: u, weight: w))
    }
    
    private func display() {
        for i in 0..<vertexCount {
            print("\(i) | ", terminator: " ")
            for node in self.adjacencyList[i] {
                print("\(node.vertex)(\(node.weight))", terminator: " -> ")
            }
            print("")
        }
        print("\n")
    }
    
    // Time Complexity: O(V^2) || Space Complexity: O(V+E)
    func primsAlgorithm(u: Int) {
        var mst = [Bool](repeating: false, count: vertexCount)
        var keys = [Int](repeating: Int.max, count: vertexCount)
        keys[u] = 0
        var result = 0
        
        for _ in 0..<vertexCount {
            var vertex = -1
            for j in 0..<vertexCount {
                if !mst[j] && (vertex == -1 || keys[j] < keys[vertex]) {
                    vertex = j
                }
            }
            result += keys[vertex]
            mst[vertex] = true
            
            for node in self.adjacencyList[vertex] {
                if !mst[node.vertex] && node.weight < keys[node.vertex] {
                    keys[node.vertex] = node.weight
                }
            }
        }
        print(result)
        print(keys)
    }
}
