//
//  剑指 Offer 65. 不用加减乘除做加法.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/16.
//
/*
 写一个函数，求两个整数之和，要求在函数体内不得使用 “+”、“-”、“*”、“/” 四则运算符号。

  

 示例:

 输入: a = 1, b = 1
 输出: 2
  



 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/bu-yong-jia-jian-cheng-chu-zuo-jia-fa-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import Foundation

func add(_ a: Int, _ b: Int) -> Int {

    var  b = b
    var  a = a
    
    while  b != 0 {
        
        let c = (a&b)>>1
        
        a^=b
        
        b = c
        
    }
    
    
    return a
    
}
