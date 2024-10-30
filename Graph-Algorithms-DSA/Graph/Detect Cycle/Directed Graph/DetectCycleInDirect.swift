//
//  DetectCycleInDirect.swift
//  Graph-Algorithms-DSA
//
//  Created by Hirendra Sharma on 30/10/24.
//

class DetectCycleInDirect {
    private var adjacencyList = [[Int]]()
    private var vertexCount: Int
    
    init(vertexCount: Int) {
        self.vertexCount = vertexCount
        self.adjacencyList = [[Int]](repeating: [Int](), count: vertexCount)
    }
    
    func runTest() {
        createDirectGraph()
        let hasCycle = cycleDetection(u: 0)
        print(hasCycle)
    }
    
    private func createDirectGraph() {
        let edges = [
            (0,1),(1,2),(1,5),(2,3),(3,4),(4,1),(4,0)
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
            for neighbor in self.adjacencyList[i] {
                print("\(neighbor)", terminator: " -> ")
            }
            print("")
        }
        print("\n")
    }
    
    /// Time Complexity: O(V+E) || Space Complexity: O(V)

    func cycleDetection(u: Int) -> Bool {
        var visited = [Bool](repeating: false, count: vertexCount)
        var recStack = [Bool](repeating: false, count: vertexCount)
        
        for i in 0..<vertexCount {
            if !visited[i] {
                if dfs(u: i, visited: &visited, recStack: &recStack) {
                    return true
                }
            }
        }
        
        return false
    }
    
    func dfs(u: Int, visited: inout [Bool], recStack: inout [Bool]) -> Bool {
        visited[u] = true
        recStack[u] = true
        for node in adjacencyList[u] {
            if !visited[node] {
                if dfs(u: node, visited: &visited, recStack: &recStack) {
                    return true
                }
            } else if recStack[node] {
                return true
            }
        }
        recStack[u] = false
        return false
    }
}
