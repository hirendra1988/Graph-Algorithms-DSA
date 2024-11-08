//
//  KruskalsAlgorithm.swift
//  Graph-Algorithms-DSA
//
//  Created by Hirendra Sharma on 08/11/24.
//

class KruskalsAlgorithm {
    var parent = [Int]()
    var rank = [Int]()
    
    struct Edge {
        var source: Int
        var destination: Int
        var weight: Int
    }
    
    init() {
        
    }
    
    func runTest() {
        let edges =  [
            [[1, 3], [2, 5]],
            [[0, 3], [2, 10],[3, 12]],
            [[0, 5], [1, 10]],
            [[1, 12]]
        ]
        let res = kruskalsAlgorithm(edges)
        print(res)
    }
    
    func kruskalsAlgorithm(_ edges: [[[Int]]]) -> [[[Int]]] {
        var sortedEdges = [Edge]()
        for i in 0..<edges.count {
            for edge in edges[i] {
                if edge[0] < i { // Condition to Avoid Duplicate Edges
                    sortedEdges.append(Edge(source: i, destination: edge[0], weight: edge[1]))
                }
            }
        }
        
        sortedEdges = sortedEdges.sorted { $0.weight < $1.weight }
        var mst = [[[Int]]](repeating: [[Int]](), count: sortedEdges.count)
        parent = Array(0..<sortedEdges.count)
        rank = [Int](repeating: 0, count: sortedEdges.count)
        
        for i in 0..<sortedEdges.count {
            let edge = sortedEdges[i]
            let x = find(edge.source)
            let y = find(edge.destination)
            if x != y {
                union(a: x, b: y)
                mst[edge.source].append([edge.destination, edge.weight])
                mst[edge.destination].append([edge.source, edge.weight])
            }
        }
        
        return mst
    }
    
    func union(a: Int, b: Int) {
        let x = find(a)
        let y = find(b)
        if x == y {
            return
        }
        if rank[x] < rank[y] {
            parent[x] = y
        } else if rank[x] > rank[y] {
            parent[y] = x
        } else {
            parent[y] = x
            rank[x] += 1
        }
    }
    
    func find(_ x: Int) -> Int {
        if parent[x] != x {
            parent[x] = find(parent[x])
        }
        return parent[x]
    }
    
}
