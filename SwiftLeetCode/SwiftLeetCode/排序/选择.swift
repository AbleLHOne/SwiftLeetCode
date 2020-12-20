//
//  选择.swift
//  SwiftLeetCode
//
//  Created by lihao on 2020/12/20.
//

import Foundation

/**
 选择排序 希望每一次遍历检索 找出最大值 和 数组最后一位进行交换从而到达数据排序目的
 和冒泡排序类似 但减少了交换次数
 */
func selectSort(){
    
    var ary:Array = [10,100,90,88,70,766,9,]
    var end = ary.count - 1
    
    while end >= 0 {
        var maxIndex = 0
        for begin in 0 ..< end {
            
            if ary[begin] > ary[begin+1] {
                
                maxIndex = begin
            }
        }
        
        let temp = ary[maxIndex]
        ary[maxIndex] =  ary[end]
        ary[end] = temp
        
        end -= 1
    }
    print(ary)
}
