//
//  剑指 Offer 29. 顺时针打印矩阵.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/3.
//
/**
 输入一个矩阵，按照从外向里以顺时针的顺序依次打印出每一个数字。

  

 示例 1：

 输入：matrix = [[1,2,3],[4,5,6],[7,8,9]]
 输出：[1,2,3,6,9,8,7,4,5]
 示例 2：

 输入：matrix = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
 输出：[1,2,3,4,8,12,11,10,9,5,6,7]

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/shun-shi-zhen-da-yin-ju-zhen-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Foundation


/*
 思路：
      → → → →
      ↑     ↓
      ↑     ↓
      ↑ ← ← ↓
 */
func spiralOrder(_ matrix: [[Int]]) -> [Int] {
    if matrix.count <= 1 {
        return matrix.first ?? []
    }
    let maxRow = matrix.count
    let maxColumn = matrix[0].count
    let maxCount = maxRow * maxColumn
    var row = 0
    var column = 0
    var newArr:[Int] = []
    var start = 0
    while newArr.count < maxCount {
        // 从左到右
        
        while column < maxColumn-start {
            newArr.append(matrix[row][column])
            column += 1
        }
        column -= 1
        // 从上到下
        while row < maxRow-start-1 {
            row += 1
            newArr.append(matrix[row][column])
        }
        // 从右到左
        while column > start+1 {
            column -= 1
            newArr.append(matrix[row][column])
            
        }
        
        // 从下到上
        if column > start {
            column -= 1
            while row >= start+1 {
                newArr.append(matrix[row][column])
                row -= 1
            }
        }
       
        start += 1
        row = start
        column = start
    }
    return newArr
}


