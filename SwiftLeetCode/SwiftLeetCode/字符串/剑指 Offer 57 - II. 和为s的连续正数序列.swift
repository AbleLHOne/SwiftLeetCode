//
//  剑指 Offer 57 - II. 和为s的连续正数序列.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/10.
//
/**
 
 输入一个正整数 target ，输出所有和为 target 的连续正整数序列（至少含有两个数）。

 序列内的数字由小到大排列，不同序列按照首个数字从小到大排列。

  

 示例 1：

 输入：target = 9
 输出：[[2,3,4],[4,5]]
 示例 2：

 输入：target = 15
 输出：[[1,2,3,4,5],[4,5,6],[7,8]]


 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/he-wei-sde-lian-xu-zheng-shu-xu-lie-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 
 */
import Foundation

func findContinuousSequence(_ target: Int) -> [[Int]] {

    var pathAry:[Array<Int>] = Array()
   
    var index = 0
    var number = 0
    var numberIndex = 1
    
    while index < target {
        
        number += index
        
        if number == target {
            
            var ary = Array<Int>()
            
            for x in numberIndex ..< index+1  {
                

                ary.append(x)
                
            }
            
            pathAry.append(ary)
        }
        
        
        if (pathAry.count == 0 && index+1 == target) || number > target {
            
            numberIndex+=1
            
            index = numberIndex
            
            number = 0
            
        }else{
            
            index+=1
            
        }
        
        
    }
   

    return pathAry
}
