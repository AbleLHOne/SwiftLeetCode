//
//  冒泡.swift
//  SwiftLeetCode
//
//  Created by lihao on 2020/12/20.
//

import Foundation


/**
 基础冒泡排序 升序
 每次检索 都会把最大的一个放到最后一个 在每一次检索是缩小检索范围
 时间复杂度：o(n)²
 */
func bubbleSort(){
    
    var ary:Array = [10,100,90,88,70,766,9,]
    var end = ary.count - 1
    
    while end >= 0 {
        
        for begin in 0 ..< end {
            
            if ary[begin] > ary[begin+1] {
                
                let temp = ary[begin]
                ary[begin] =  ary[begin+1]
                ary[begin + 1] = temp
            }
        }
        
        end -= 1
    }
    print(ary)
}
/**
 优化减少比较次数 在数据大部分是升序的情况下（语法所致相对麻烦）
 1 定义最后一个交换下标 来缩小下次检索访问
 */
func bubbleSort1(){
    
    var ary:Array = [10,100,90,88,70,766,9,]
    var end = ary.count - 1
    
    while end >= 0 {
        var lastMaxIndex = end
        for begin in 0 ..< end {
            if ary[begin] > ary[begin+1] {
                
                let temp = ary[begin]
                ary[begin] =  ary[begin+1]
                ary[begin + 1] = temp
                lastMaxIndex = begin
            }
        }
        
        if lastMaxIndex != end {
            
            end = lastMaxIndex
        }else{
            
            end -= 1
        }
      
    }
    print(ary)
}
    
