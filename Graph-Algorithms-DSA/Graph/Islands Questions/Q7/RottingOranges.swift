//
//  RottingOranges.swift
//  Graph-Algorithms-DSA
//
//  Created by Hirendra Sharma on 16/11/24.
//

//https://leetcode.com/problems/rotting-oranges/
class RottingOranges {
    
    func runTest() {
        let grid = [[2,1,1],
                    [1,1,0],
                    [0,1,1]]
        let result = orangesRotting(grid)
        print(result)
    }
    
    func orangesRotting(_ grid: [[Int]]) -> Int {
        var grid = grid
        let rows = grid.count
        let cols = grid[0].count
        var result = 0
        var queue = [[Int]]()
        var freshOranges = 0
        
        for i in 0..<grid.count {
            for j in 0..<grid[0].count {
                if grid[i][j] == 2 {
                    queue.append([i, j])
                } else if grid[i][j] == 1 {
                    freshOranges += 1
                }
            }
        }
        
        if freshOranges == 0 {
            return 0
        }
        
        while !queue.isEmpty {
            var qCount = queue.count
            var temp = 0
            while qCount != 0 {
                let current = queue.removeFirst()
                let x1 = current[0]
                let y1 = current[1]
                
                let ax = [1, -1, 0, 0]
                let ay = [0,0, 1, -1]
                
                for i in 0..<4 {
                    let x2 = x1 + ax[i]
                    let y2 = y1 + ay[i]
                    
                    if isValid(i: x2, j: y2, grid: grid) {
                        queue.append([x2, y2])
                        temp += 1
                        grid[x2][y2] = 2
                    }
                }
                qCount -= 1
            }
            
            if temp != 0 {
                result += 1
            }
        }
        
        for i in 0..<rows {
            for j in 0..<cols {
                if grid[i][j] == 1 {
                    result = 0
                }
            }
        }
        
        return result == 0 ? -1 : result
    }
    
    func isValid(i: Int, j: Int, grid: [[Int]]) -> Bool {
        let rows = grid.count
        let cols = grid[0].count
        if i < 0 || i >= rows || j < 0 || j >= cols || grid[i][j] != 1 {
            return false
        }
        return true
    }
    
    
}
