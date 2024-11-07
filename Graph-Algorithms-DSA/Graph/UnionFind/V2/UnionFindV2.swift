//
//  UnionFindV2.swift
//  Graph-Algorithms-DSA
//
//  Created by Hirendra Sharma on 06/11/24.
//

class UnionFindV2 {
    private var parent = [Int]()
    private var size: Int
    private var rank = [Int]()
    
    init(size: Int) {
        self.size = size
        parent = Array(0..<size) // Initially, each element is its own parent (self-loop)
        rank = [Int](repeating: 0, count: size)
    }
    
    func runTest() {
        makeFriend(a: 0, b: 1)
        makeFriend(a: 2, b: 7)
        makeFriend(a: 3, b: 6)
        print(areFriends(a: 0, b: 2))
        makeFriend(a: 0, b: 7)
        print(areFriends(a: 0, b: 2))
    }
    
    // Helper function to find the root parent of element `x`
    private func find(_ x: Int) -> Int {
        if parent[x] != x {
            parent[x] = find(parent[x])
        }
        return parent[x]
    }
    
    // Connect two elements (union by rank operation)
    private func makeFriend(a: Int, b: Int) { // union
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
    
    // Check if two elements are connected (i.e., have the same root)
    private func areFriends(a: Int, b: Int) -> Bool {
        return find(a) == find(b)
    }

}
