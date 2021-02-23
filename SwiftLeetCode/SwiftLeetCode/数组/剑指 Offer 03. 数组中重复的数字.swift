//
//  剑指 Offer 03. 数组中重复的数字.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/11.
//
/**
 找出数组中重复的数字。


 在一个长度为 n 的数组 nums 里的所有数字都在 0～n-1 的范围内。数组中某些数字是重复的，但不知道有几个数字重复了，也不知道每个数字重复了几次。请找出数组中任意一个重复的数字。

 示例 1：

 输入：
 [2, 3, 1, 0, 2, 5, 3]
 输出：2 或 3

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/shu-zu-zhong-zhong-fu-de-shu-zi-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import Foundation

func findRepeatNumber(_ nums: [Int]) -> Int {

    var index = 0
    var map:Dictionary = [Int: Int]()
    var number = 0
    while index < nums.count {
        
        let count:Int = map[nums[index]] ?? 0
        
        map.updateValue(count+1, forKey: nums[index])
        
        if map[nums[index]]! >= 2 {
            
         
            number = nums[index]
            
            break
            
        }
    
        index += 1
    }
    
    return number
}
