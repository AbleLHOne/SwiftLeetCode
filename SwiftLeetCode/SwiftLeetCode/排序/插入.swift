//
//  插入.swift
//  SwiftLeetCode
//
//  Created by lihao on 2020/12/20.
//

import Foundation

/**
 插入排序
 1 插入排序 会哪当前数据 跟之前的数据 进行比较 进行交换 头部分已经排序好
 负责度 o（n）²
 */
func insterSort(){
    
    var ary:Array = [10,100,90,88,70,766,9,]
    let end = ary.count
    
    for begin in 1 ..< end {
        //记录要插入的下标
        var cur = begin
        
        //进行比较 如果当前数据小于 前面的数据 进行交换
        while cur > 0 && ary[cur] < ary[cur - 1]{
            
            let temp = ary[cur]
            ary[cur] =  ary[cur-1]
            ary[cur - 1] = temp
        
            cur -= 1
        }

    }
    print(ary)
    
    
    
}
