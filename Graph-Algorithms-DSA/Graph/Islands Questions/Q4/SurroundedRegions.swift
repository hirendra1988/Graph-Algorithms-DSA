//
//  SurroundedRegions.swift
//  Graph-Algorithms-DSA
//
//  Created by Hirendra Sharma on 11/11/24.
//

//https://leetcode.com/problems/surrounded-regions/
class SurroundedRegions {
    
    func runTest() {
        var board: [[Character]] = [["X","X","X","X"],
                                    ["X","O","O","X"],
                                    ["X","X","O","X"],
                                    ["X","O","X","X"]]
        solve(&board)
        print(board)
    }
    
    func solve(_ board: inout [[Character]]) {
        let rows = board.count
        let cols = board[0].count
        for i in 0..<rows {
            for j in 0..<cols {
                if i*j == 0 || i == rows - 1 || j == cols - 1 {
                    if board[i][j] == "O" {
                        dfs(i, j, rows, cols, &board)
                    }
                }
            }
        }
        
        for i in 0..<rows {
            for j in 0..<cols {
                if board[i][j] == "O" {
                    board[i][j] = "X"
                } else if board[i][j] == "B" {
                    board[i][j] = "O"
                }
            }
        }
    }
    
    func dfs(_ i: Int, _ j: Int, _ rows: Int, _ cols: Int, _ board: inout [[Character]]) {
        if i < 0 || i >= rows || j < 0 || j >= cols || board[i][j] != "O" {
            return
        }
        board[i][j] = "B"
        dfs(i-1, j, rows, cols, &board)
        dfs(i+1, j, rows, cols, &board)
        dfs(i, j-1, rows, cols, &board)
        dfs(i, j+1, rows, cols, &board)
    }
    
}
