//
//  剑指 Offer 11. 旋转数组的最小数字.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/2.
//

/**
 把一个数组最开始的若干个元素搬到数组的末尾，我们称之为数组的旋转。输入一个递增排序的数组的一个旋转，输出旋转数组的最小元素。例如，数组 [3,4,5,1,2] 为 [1,2,3,4,5] 的一个旋转，该数组的最小值为1。

 示例 1：

 输入：[3,4,5,1,2]
 输出：1
 示例 2：

 输入：[2,2,2,0,1]
 输出：0

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/xuan-zhuan-shu-zu-de-zui-xiao-shu-zi-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 
 
 */
import Foundation

func minArray(_ numbers: [Int]) -> Int {

    let length = numbers.count
    var index = 0
    while index < length {
        
        var nextIndex  = 0
        if index+1 > length - 1 {
            
            nextIndex = length - 1
        }else{
            nextIndex = index+1
        }

        if numbers[index] > numbers[nextIndex]{
            
            return numbers[index+1]
        }else{
            
            index += 1
            
        }
        
    }
    
    return numbers[0]
 
}
