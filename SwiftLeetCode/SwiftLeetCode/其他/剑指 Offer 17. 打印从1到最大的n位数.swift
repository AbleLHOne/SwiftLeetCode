//
//  剑指 Offer 17. 打印从1到最大的n位数.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/2.
//
/**
 
 输入数字 n，按顺序打印出从 1 到最大的 n 位十进制数。比如输入 3，则打印出 1、2、3 一直到最大的 3 位数 999。

 示例 1:

 输入: n = 1
 输出: [1,2,3,4,5,6,7,8,9]

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/da-yin-cong-1dao-zui-da-de-nwei-shu-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 
 */

import Foundation

func printNumbers(_ n: Int) -> [Int] {

    //把 n 转换为字符串
    var strPoint = "0"
    var n = n
    
    while (n != 0)  {
        
        strPoint += "9"
        
        n -= 1
    }
    

    let maxNumber:Int = Int(strPoint)!
    var dataAry = Array<Int>()
    var index = 0
    
    while (index <= maxNumber) {
        
        index+=1
        dataAry.append(index)
       
    }
    
    
    return dataAry
    
}
