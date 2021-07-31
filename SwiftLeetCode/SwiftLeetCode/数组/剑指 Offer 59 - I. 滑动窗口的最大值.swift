//
//  剑指 Offer 59 - I. 滑动窗口的最大值.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/17.
//
/**
 给定一个数组 nums 和滑动窗口的大小 k，请找出所有滑动窗口里的最大值。

 示例:

 输入: nums = [1,3,-1,-3,5,3,6,7], 和 k = 3
 输出: [3,3,5,5,6,7]
 解释:

   滑动窗口的位置                最大值
 ---------------               -----
 [1  3  -1] -3  5  3  6  7       3
  1 [3  -1  -3] 5  3  6  7       3
  1  3 [-1  -3  5] 3  6  7       5
  1  3  -1 [-3  5  3] 6  7       5
  1  3  -1  -3 [5  3  6] 7       6
  1  3  -1  -3  5 [3  6  7]      7

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/hua-dong-chuang-kou-de-zui-da-zhi-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import Foundation
func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {

    //双指针
    
    var firstIndex = 0
    var lastIndex = k
    var maxNumber = -99999
    var newAry = Array<Int>()
    

    while firstIndex <= nums.count - k {
        
        
        var index = firstIndex
        maxNumber = -99999
        while index < lastIndex {
            
            maxNumber = max(nums[index], maxNumber)
            
            index+=1
        }
        newAry.append(maxNumber)
        firstIndex+=1
        lastIndex+=1
    }
    


    return newAry

}
