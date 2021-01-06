//
//  剑指 Offer 21. 调整数组顺序使奇数位于偶数前面.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/2.
//

/**
 
 输入一个整数数组，实现一个函数来调整该数组中数字的顺序，使得所有奇数位于数组的前半部分，所有偶数位于数组的后半部分。

  

 示例：

 输入：nums = [1,2,3,4]
 输出：[1,3,2,4]
 注：[3,1,2,4] 也是正确的答案之一。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/diao-zheng-shu-zu-shun-xu-shi-qi-shu-wei-yu-ou-shu-qian-mian-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import Foundation

func exchange(_ nums: [Int]) -> [Int] {

    
    if nums.count == 0 {
        
        return []
    }
    
    //思路 使用双指针 进行辅助判断
    var nums = nums
    
    var first = 0
    var last = nums.count - 1
    
   
    

    while first != last  {
        
        
        if ((nums[first] % 2) == 0&&(nums[last] % 2) != 0) {
            
            let temp = nums[first]
            
            nums[first] = nums[last]
            
            nums[last] = temp
            
            
        }
        
        //不是偶数下标加一
        if (nums[first] % 2) != 0 {
            
            first += 1
            
        }else if (nums[last] % 2) == 0 {
            //不是ji数下标加一
            last -= 1
            
        }
        
    }
    
    return nums
    
}
