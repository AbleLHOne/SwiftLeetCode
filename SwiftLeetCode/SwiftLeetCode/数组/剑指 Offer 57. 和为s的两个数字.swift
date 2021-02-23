//
//  剑指 Offer 57. 和为s的两个数字.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/11.
//
/**
 输入一个递增排序的数组和一个数字s，在数组中查找两个数，使得它们的和正好是s。如果有多对数字的和等于s，则输出任意一对即可。

  

 示例 1：

 输入：nums = [2,7,11,15], target = 9
 输出：[2,7] 或者 [7,2]
 示例 2：

 输入：nums = [10,26,30,31,47,60], target = 40
 输出：[10,30] 或者 [30,10]

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/he-wei-sde-liang-ge-shu-zi-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    
    
    //思路 使用双指针
    
    var currenIndex = 0
    var endIndex = nums.count - 1
    var numberAry = Array<Int>()
    
    while currenIndex < endIndex {
        
        let sum = nums[currenIndex] + nums[endIndex]
        
        if sum > target {
            
            endIndex-=1
        }else if sum < target{
            
            currenIndex+=1
        }else{
            
            numberAry.append(nums[currenIndex])
            numberAry.append(nums[endIndex])
            
            break
        }
    }
    
    
    return numberAry
    
}
