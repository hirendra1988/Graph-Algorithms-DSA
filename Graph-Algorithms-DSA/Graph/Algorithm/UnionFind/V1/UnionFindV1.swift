//
//  UnionFindV1.swift
//  Graph-Algorithms-DSA
//
//  Created by Hirendra Sharma on 06/11/24.
//

class UnionFindV1 {
    private var parent = [Int]()
    private var size: Int
    
    init(size: Int) {
        self.size = size
        parent = Array(0..<size) /// Initially, each element is its own parent (self-loop)
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
        // If `x` is its own parent, return `x` (it is the root)
        if parent[x] == x {
            return x
        }
        return find(parent[x])
    }
    
    // Connect two elements (union operation)
    private func makeFriend(a: Int, b: Int) { // union
        let x = find(a)
        let y = find(b)
        
        // If both elements have the same root, they are already connected
        if x == y {
            return
        }
        parent[x] = y // Otherwise, connect root of `a` to root of `b`
    }
    
    // Check if two elements are connected (i.e., have the same root)
    private func areFriends(a: Int, b: Int) -> Bool {
        return find(a) == find(b)
    }
    
}
