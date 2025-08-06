//
//  BellmanFord.swift
//  Graph-Algorithms-DSA
//
//  Created by Hirendra Sharma on 06/08/25.
//

//https://www.youtube.com/watch?v=SiI03wnREt4&t=734s/
//Core Idea of Bellman-Ford
//Start with all distances as infinity (∞) except the source node (0), which is 0.
//
//Repeat V - 1 times (here 3 times because V = 4), and for each edge, try to relax it.
//
//Relaxation means:
//If you can find a shorter path to a node, update it.
//
//After V-1 relaxations, if you can still relax any edge, that means there is a negative weight cycle.
                                                            
class BellmanFord {
    
    init() {
        runTest()
    }
    
    func runTest() {
        let edges = [
            (0, 1, 5),
            (0, 2, 4),
            (1, 3, 3),
            (2, 1, 6),
            (3, 2, -2)
        ]
        if let distances = bellmanFord(0, 4, edges) {
            print(distances) // Output shortest distances from node 0
        }
    }
    
    func bellmanFord(_ src: Int, _ v: Int, _ edges: [(Int, Int, Int)]) -> [Int]? {
        let n = edges.count
        var dist = [Int](repeating: Int.max, count: v)
        dist[src] = 0
        
        for i in 0..<v-1 {
            for (u, v, w) in edges {
                if dist[u] != Int.max && (dist[u] + w) < dist[v] {
                    dist[v] = dist[u] + w
                }
            }
        }
        
        for (u, v, w) in edges {
            if dist[u] != Int.max && (dist[u] + w) < dist[v] {
                return nil
            }
        }
        
        return dist
        
    }
    
}
