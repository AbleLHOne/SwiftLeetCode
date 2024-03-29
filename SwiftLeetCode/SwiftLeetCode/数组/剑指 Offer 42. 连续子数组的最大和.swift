//
//  剑指 Offer 42. 连续子数组的最大和.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/15.
//
/**
 输入一个整型数组，数组中的一个或连续多个整数组成一个子数组。求所有子数组的和的最大值。

 要求时间复杂度为O(n)。

  

 示例1:

 输入: nums = [-2,1,-3,4,-1,2,1,-5,4]
 输出: 6
 解释: 连续子数组 [4,-1,2,1] 的和最大，为 6。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/lian-xu-zi-shu-zu-de-zui-da-he-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import Foundation

func maxSubArray(_ nums: [Int]) -> Int {
    
    var  nums = nums
    
    var res = nums[0];
    
    var index = 1
    
    while index < nums.count {
        
        nums[index] += max(nums[index - 1], 0)
        res = max(nums[index], res)
        
        index+=1
        
    }
    
   return res;

    
}
