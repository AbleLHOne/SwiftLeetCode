//
//  剑指 Offer 61. 扑克牌中的顺子.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/17.
//
/**
 从扑克牌中随机抽5张牌，判断是不是一个顺子，即这5张牌是不是连续的。2～10为数字本身，A为1，J为11，Q为12，K为13，而大、小王为 0 ，可以看成任意数字。A 不能视为 14。

  

 示例 1:

 输入: [1,2,3,4,5]
 输出: True
  

 示例 2:

 输入: [0,0,1,2,5]
 输出: True


 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/bu-ke-pai-zhong-de-shun-zi-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。*/
import Foundation
func isStraight(_ nums: [Int]) -> Bool {
    
    
    var ma = 0
    var mi = 14
    
    var ary = Array<Int>()
    
    for num in nums {
        
        if num == 0 {
            
            continue
        }
        
        
        ma = max(num, ma)
        mi = min(num, mi)
        
        if ary.contains(num) {
            
            return false
        }
        
        ary.append(num)
    }
    
    

    return ma - mi < 5
}
