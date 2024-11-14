//
//  NumberOfProvinces.swift
//  Graph-Algorithms-DSA
//
//  Created by Hirendra Sharma on 13/11/24.
//

//https://leetcode.com/problems/number-of-provinces/
class NumberOfProvinces {
    
    func runTest() {
        let isConnected = [[1,1,0],[1,1,0],[0,0,1]]
        let result = findCircleNum(isConnected)
        print(result)
    }
    
    func findCircleNum(_ isConnected: [[Int]]) -> Int {
        var result = 0
        var visited = [Bool](repeating: false, count: isConnected.count)
        var adjacencyList = [[Int]](repeating: [Int](), count: isConnected.count)
        
        for i in 0..<isConnected.count {
            for j in 0..<isConnected[i].count {
                if isConnected[i][j] == 1 {
                    adjacencyList[i].append(j)
                }
            }
        }
        
        for i in 0..<adjacencyList.count {
            if !visited[i] {
                dfs(s: i, visited: &visited, adjacencyList: adjacencyList)
                result += 1
            }
        }
        
        return result
    }
    
    func dfs(s: Int, visited: inout [Bool], adjacencyList: [[Int]]) {
        visited[s] = true
        for node in adjacencyList[s] {
            if !visited[node] {
                dfs(s: node, visited: &visited, adjacencyList: adjacencyList)
            }
        }
    }
    
}
