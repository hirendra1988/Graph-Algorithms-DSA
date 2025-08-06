//
//  PrimsAlgorithmV1.swift
//  Graph-Algorithms-DSA
//
//  Created by Hirendra Sharma on 03/11/24.
//

class PrimsAlgorithmV1 {
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
    
    // Time Complexity: O(V×E) || Space Complexity: O(V+E)
    func primsAlgorithm(u: Int) {
        var mst = [Int]()
        var nonMst = [Int]()
        
        mst.append(u)
        for i in 1..<vertexCount {
            nonMst.append(i)
        }
        var result = 0
        while !nonMst.isEmpty {
            var v = -1
            var min = 0
            for x in mst {
                for node in self.adjacencyList[x] {
                    if !mst.contains(node.vertex) && (v == -1 || node.weight < min) {
                        v = node.vertex
                        min = node.weight
                    }
                }
            }
            result += min
            mst.append(v)
            
            if let index = nonMst.firstIndex(of: v) {
                nonMst.remove(at: index)
            }
            
        }
        
        print("Shortest Weighted Path sum: \(result)")
        //Shortest Weighted Path sum: 13
    }
}
