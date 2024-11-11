//
//  NumberOfClosedIsland.swift
//  Graph-Algorithms-DSA
//
//  Created by Hirendra Sharma on 11/11/24.
//

// https://leetcode.com/problems/number-of-closed-islands/
// Number of Closed Island
class NumberOfClosedIsland {
    
    func runTest() {
        let grid = [
            [1, 1, 1, 1, 1, 1, 1, 0],
            [1, 0, 0, 0, 0, 1, 1, 0],
            [1, 0, 1, 0, 1, 1, 1, 0],
            [1, 0, 0, 0, 0, 1, 0, 1],
            [1, 1, 1, 1, 1, 1, 1, 0]
        ]
        let result = closedIsland(grid)
        print(result)
    }
    
    func closedIsland(_ grid: [[Int]]) -> Int {
        var grid = grid
        var result = 0
        let rows = grid.count
        let cols = grid[0].count
        
        for i in 0..<rows {
            for j in 0..<cols {
                // Check if the current cell is on the boundary of the grid
                if i*j == 0 || i == rows - 1 || j == cols - 1 {
                    if grid[i][j] == 0 {
                        dfs(i, j, rows, cols, &grid)
                    }
                }
            }
        }
        
        for i in 0..<rows {
            for j in 0..<cols {
                if grid[i][j] == 0 {
                    dfs(i, j, rows, cols, &grid)
                    result += 1
                }
            }
        }
        
        return result
    }
    
    func dfs(_ i: Int, _ j: Int, _ rows: Int, _ cols: Int, _ grid: inout [[Int]]) {
        if i < 0 || i >= rows || j < 0 || j >= cols || grid[i][j] != 0 {
            return
        }
        grid[i][j] = 1
        dfs(i-1, j, rows, cols, &grid)
        dfs(i+1, j, rows, cols, &grid)
        dfs(i, j-1, rows, cols, &grid)
        dfs(i, j+1, rows, cols, &grid)
    }
    
}
