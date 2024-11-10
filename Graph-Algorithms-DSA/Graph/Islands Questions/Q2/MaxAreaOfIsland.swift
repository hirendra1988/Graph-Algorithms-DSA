//
//  MaxAreaOfIsland.swift
//  Graph-Algorithms-DSA
//
//  Created by Hirendra Sharma on 09/11/24.
//

//https://leetcode.com/problems/max-area-of-island/
class MaxAreaOfIsland {
    
    func runTest() {
        let grid = [
            [0,0,1,0,0,0,0,1,0,0,0,0,0],
            [0,0,0,0,0,0,0,1,1,1,0,0,0],
            [0,1,1,0,1,0,0,0,0,0,0,0,0],
            [0,1,0,0,1,1,0,0,1,0,1,0,0],
            [0,1,0,0,1,1,0,0,1,1,1,0,0],
            [0,0,0,0,0,0,0,0,0,0,1,0,0],
            [0,0,0,0,0,0,0,1,1,1,0,0,0],
            [0,0,0,0,0,0,0,1,1,0,0,0,0]]
        
        let result = maxAreaOfIsland(grid)
        print(result)
    }
    
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        var grid = grid
        let rows = grid.count
        let cols = grid[0].count
        var largestIslandArea = 0
        
        for i in 0..<rows {
            for j in 0..<cols {
                if grid[i][j] == 1 {
                    var currentIslandArea = 0
                    dfs(i, j, rows, cols, &grid, &currentIslandArea)
                    largestIslandArea = max(currentIslandArea, largestIslandArea)
                }
            }
        }
        return largestIslandArea
    }
    
    func dfs(_ i: Int, _ j: Int, _ rows: Int, _ cols: Int,
             _ grid: inout [[Int]], _ currentIslandArea: inout Int) {
        
        if i < 0 || i >= rows || j < 0 || j >= cols || grid[i][j] != 1 {
            return
        }
        grid[i][j] = 0
        currentIslandArea += 1
        dfs(i-1, j, rows, cols, &grid, &currentIslandArea)
        dfs(i+1, j, rows, cols, &grid, &currentIslandArea)
        dfs(i, j-1, rows, cols, &grid, &currentIslandArea)
        dfs(i, j+1, rows, cols, &grid, &currentIslandArea)
    }
    
}
