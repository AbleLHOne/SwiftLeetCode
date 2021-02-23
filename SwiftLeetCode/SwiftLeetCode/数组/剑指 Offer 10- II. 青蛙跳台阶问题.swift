//
//  剑指 Offer 10- II. 青蛙跳台阶问题.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/17.
//
/**
 一只青蛙一次可以跳上1级台阶，也可以跳上2级台阶。求该青蛙跳上一个 n 级的台阶总共有多少种跳法。

 答案需要取模 1e9+7（1000000007），如计算初始结果为：1000000008，请返回 1。

 示例 1：

 输入：n = 2
 输出：2
 示例 2：

 输入：n = 7
 输出：21
 示例 3：

 输入：n = 0
 输出：1

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/qing-wa-tiao-tai-jie-wen-ti-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import Foundation
func numWays(_ n: Int) -> Int {
   var a = 1
   var b = 1
   var sum = 0
   
   var index = 0
   while index < n {
       
        sum  = (a+b) % 1000000007
       a = b
       b = sum
       
       index+=1
   }
   
   
   
   return  a
   }
