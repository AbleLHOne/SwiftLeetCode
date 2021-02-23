//
//  剑指 Offer 04. 二维数组中的查找.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/1.
//


/**
 在一个 n * m 的二维数组中，每一行都按照从左到右递增的顺序排序，每一列都按照从上到下递增的顺序排序。请完成一个高效的函数，输入这样的一个二维数组和一个整数，判断数组中是否含有该整数。

  

 示例:

 现有矩阵 matrix 如下：

 [
   [1,   4,  7, 11, 15],
   [2,   5,  8, 12, 19],
   [3,   6,  9, 16, 22],
   [10, 13, 14, 17, 24],
   [18, 21, 23, 26, 30]
 ]
 给定 target = 5，返回 true。

 给定 target = 20，返回 false。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/er-wei-shu-zu-zhong-de-cha-zhao-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Foundation


func findNumberIn2DArray(_ matrix: [[Int]], _ target: Int) -> Bool {

    if matrix.count == 0 {
        
        return false
    }
    
    
    //思路 先从第一行查找 判断数字 大小 从而排除列数
    let rowS:Array = matrix[0]

    
    
    //记录对比停止的下标
    var recordIndex:Int = -1;
    
    var length = rowS.count - 1
    
    while length>=0 {
        
    let data = rowS[length]
    
    if data < target {
        
        recordIndex = length
        
        break
        
    }else if data == target {
        
        return true
        
    }else{
        
        
    }
    
     length -= 1

    }
    
    //确定列数进行遍历
    
    let matrixLength = matrix.count
    var beginIndex = 0
    while recordIndex >= 0 {
        
        let data = matrix[beginIndex][recordIndex]
        
        if data == target {
            
            return true
        }
        
        if beginIndex + 1 == matrixLength {
            
            recordIndex -= 1
            beginIndex = 0
            
        }else{
            
            beginIndex += 1
        }
        
    }
    
    return false
}
