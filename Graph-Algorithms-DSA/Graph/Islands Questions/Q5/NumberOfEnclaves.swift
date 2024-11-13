//
//  NumberOfEnclaves.swift
//  Graph-Algorithms-DSA
//
//  Created by Hirendra Sharma on 13/11/24.
//

// https://leetcode.com/problems/number-of-enclaves/
class NumberOfEnclaves {
    
    func runTest() {
        let grid = [[0,0,0,0],
                    [1,0,1,0],
                    [0,1,1,0],
                    [0,0,0,0]]
        let result = numEnclaves(grid)
        print(result)
    }
    
    // Time Complexity: O(m×n) || Space Complexity: O(m×n)
    func numEnclaves(_ grid: [[Int]]) -> Int {
        var grid  = grid
        var result = 0
        let rows = grid.count
        let cols = grid[0].count
        
        for i in 0..<rows {
            for j in 0..<cols {
                if i * j == 0 || i == rows - 1 || j == cols - 1 {
                    dfs(i, j, rows, cols, &grid)
                }
            }
        }
        
        for i in 0..<rows {
            for j in 0..<cols {
                if grid[i][j] == 1 {
                    result += 1
                }
            }
        }
        
        return result
    }
    
    func dfs(_ i: Int, _ j: Int, _ rows: Int, _ cols: Int, _ grid: inout [[Int]]) {
        if i < 0 || i >= rows || j < 0 || j >= cols || grid[i][j] != 1 {
            return
        }
        grid[i][j] = 0
        dfs(i-1, j, rows, cols, &grid)
        dfs(i+1, j, rows, cols, &grid)
        dfs(i, j-1, rows, cols, &grid)
        dfs(i, j+1, rows, cols, &grid)
    }
    
}
