//
//  TopologicalSorting.swift
//  Graph-Algorithms-DSA
//
//  Created by Hirendra Sharma on 01/11/24.
//

class TopologicalSorting {
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
    
    // MARK: Topological sort using BFS (Kahn's algorithm)
    func topologicalSort() {
        var inDegree = [Int](repeating: 0, count: vertexCount)
        for list in self.adjacencyList {
            for j in list {
                inDegree[j] += 1
            }
        }
        
        var queue = [Int]()
        for i in 0..<vertexCount {
            if inDegree[i] == 0 {
                queue.append(i)
            }
        }
        
        while !queue.isEmpty {
            let currentNode = queue.removeFirst()
            print(currentNode, terminator: " -> ")
            
            for node in self.adjacencyList[currentNode] {
                inDegree[node] -= 1
                if inDegree[node] == 0 {
                    queue.append(node)
                }
            }
        }
    }
}
