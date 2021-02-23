//
//  剑指 Offer 39. 数组中出现次数超过一半的数字.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/8.
//
/**
 数组中有一个数字出现的次数超过数组长度的一半，请找出这个数字。

  

 你可以假设数组是非空的，并且给定的数组总是存在多数元素。

  

 示例 1:

 输入: [1, 2, 3, 2, 2, 2, 5, 4, 2]
 输出: 2


 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/shu-zu-zhong-chu-xian-ci-shu-chao-guo-yi-ban-de-shu-zi-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import Foundation

func majorityElement(_ nums: [Int]) -> Int {

    //思路 用MAP 记录出现数字的个数
    
    var map:Dictionary = [Int: Int]()
    
    var index = 0
    
    var maxCount = 0
    var number = 0
    
    
    while index < nums.count {
        
        
        let count:Int = map[nums[index]] ?? 0
        
        map.updateValue(count+1, forKey: nums[index])
        
        if map[nums[index]]! >=   nums.count >> 1 && map[nums[index]]! > maxCount{
            
            maxCount = map[nums[index]]!
            number = nums[index]
            
            print("1111")
        }
    
        index += 1
    }
    

    return number

}
func majorityElement1(_ nums: [Int]) -> Int {

    
    var nums = nums
    
    nums.sort()
    
    return nums[nums.count>>1]


}
