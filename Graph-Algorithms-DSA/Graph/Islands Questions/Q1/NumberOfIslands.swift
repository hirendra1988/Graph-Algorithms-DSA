//
//  NumberOfIslands.swift
//  Graph-Algorithms-DSA
//
//  Created by Hirendra Sharma on 09/11/24.
//

class NumberOfIslands {
    
    func runTest() {
        let grid: [[Character]] = [
            ["1","1","1","1","0"],
            ["1","1","0","1","0"],
            ["1","1","0","0","0"],
            ["0","0","0","0","0"]
          ]
        
//        let grid: [[Character]] =  [
//          ["1","1","0","0","0"],
//          ["1","1","0","0","0"],
//          ["0","0","1","0","0"],
//          ["0","0","0","1","1"]
//        ]
        
        let result = numIslands(grid)
        print(result)
    }
    
    //Time complexity: O(n*m) || Space complexity: O(n*m)
    func numIslands(_ grid: [[Character]]) -> Int {
        let rows = grid.count
        let cols = grid[0].count
        var result = 0
        var visited = [[Bool]](repeating: [Bool](repeating: false, count: cols), count: rows)
        for i in 0..<rows {
            for j in 0..<cols {
                if !visited[i][j] && grid[i][j] == "1" {
                    result += 1
                    dfs(i, j, rows, cols, &visited, grid)
                }
            }
        }
        return result
    }

    func dfs(_ i: Int, _ j: Int,
             _ rows: Int, _ cols: Int,
             _ visited: inout [[Bool]],
             _ grid: [[Character]]) {

        if i < 0 || i >= rows || j < 0 || j >= cols {
            return
        }
        if !visited[i][j] && grid[i][j] == "1" {
            visited[i][j] = true
            dfs(i-1, j, rows, cols, &visited, grid)
            dfs(i+1, j, rows, cols, &visited, grid)
            dfs(i, j-1, rows, cols, &visited, grid)
            dfs(i, j+1, rows, cols, &visited, grid)
        }
    }
    
}
