//
//  DijkstraAlgo.swift
//  Graph-Algorithms-DSA
//
//  Created by Hirendra Sharma on 04/11/24.
//

//https://www.youtube.com/watch?v=Kptz-NVA2RE
//https://www.youtube.com/watch?v=TbzANA0ErDo
class DijkstraAlgo {
    class Node {
        var vertex: Int
        var weight: Int
        init(vertex: Int, weight: Int) {
            self.vertex = vertex
            self.weight = weight
        }
    }
    
    private var adjacencyList: [[Node]]
    private var vertexCount: Int

    init(vertexCount: Int) {
        self.adjacencyList = Array(repeating: [Node](), count: vertexCount)
        self.vertexCount = vertexCount
    }
    
    func runTest() {
        createEdge()
        display()
        //dijkstraAlgo()
    }
    
    private func createEdge() {
        let edges = [
            (0, 1, 50), (0, 2, 100),
            (1, 2, 30), (1, 3, 250),
            (2, 3, 20)
        ]
        for (u, v, w) in edges {
            addUEdge(u: u, v: v, w: w)
        }
    }
    
    func addUEdge(u: Int, v: Int, w: Int) {
        self.adjacencyList[u].append(Node(vertex: v, weight: w))
        self.adjacencyList[v].append(Node(vertex: u, weight: w))
    }
    
    func display() {
        for i in 0..<vertexCount {
            print("\(i) | ", terminator: " ")
            for node in self.adjacencyList[i] {
                print("\(node.vertex)", terminator: " -> ")
            }
            print("")
        }
        print("\n")
    }
    
    func dijkstraAlgo() {
        var block = [Bool](repeating: false, count: vertexCount)
        var d = [Int](repeating: Int.max, count: vertexCount)
        d[0] = 0
        
        for _ in 0..<vertexCount {
            var vertex = -1
            for j in 0..<vertexCount {
                if !block[j] && (vertex == -1 || d[j] < d[vertex]) {
                    vertex = j
                }
            }
            block[vertex] = true
            
            for node in self.adjacencyList[vertex] {
                if !block[node.vertex] && ((d[vertex] + node.weight) < d[node.vertex]) {
                    d[node.vertex] = d[vertex] + node.weight
                }
            }
        }
        print(d)
    }
}
