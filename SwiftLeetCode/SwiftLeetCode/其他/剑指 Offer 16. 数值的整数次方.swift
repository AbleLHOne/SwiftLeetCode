//
//  剑指 Offer 16. 数值的整数次方.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/2.
//
/**
 
 实现函数double Power(double base, int exponent)，求base的exponent次方。不得使用库函数，同时不需要考虑大数问题。

  

 示例 1:

 输入: 2.00000, 10
 输出: 1024.00000
 示例 2:

 输入: 2.10000, 3
 输出: 9.26100
 示例 3:

 输入: 2.00000, -2
 输出: 0.25000
 解释: 2-2 = 1/22 = 1/4 = 0.25

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/shu-zhi-de-zheng-shu-ci-fang-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 
 思路：
 如果n为负数，那么x取倒数，保证n为正数；

 先判断n是否为奇数
 是奇数，由于接下来还要减半，需要将多余的x累乘积到res中；
 n除以2减半；
 x自身相乘；
 这里需要注意的是：

 n为int型，取值范围为[-2^31, 2^31-1];
 如果n为负数，x取倒数，n取相反数变成正数，恰如恰好x为-2^31，而其相反数2^31不在int型范围内，所以要将n转化为long型；

 
 
 */
import Foundation


func myPow(_ x: Double, _ n: Int) -> Double {

    if x==0 {return 0}
    var count = n
    var sum:Double = 1.0
    var x = x
    
    if count<0 {
        
        x = (1 / x)
        count = -count
    }
    
    while (count > 0) {
        
        if ((count & 1) == 1) {
            
            sum *= x
        }
        x *= x
        count >>= 1
    }
    
    
    return sum
  }
