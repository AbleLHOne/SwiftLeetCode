//
//  堆排序.swift
//  SwiftLeetCode
//
//  Created by lihao on 2020/12/20.
//

import Foundation

/**
 堆排序 大顶推 找出顶堆最大值
 1原地建堆 建完之后
 2将第一位的值（最大值在第一位） 和最后一位值进行交换 ，
 3 交换完之后就会破坏堆性质 就需要进行堆恢复 进行下滤操作
 4 在重复第二步操作 直至堆个数为1 结束
 
 最大堆：最大堆中的最大元素在根结点（堆顶）；堆中每个父节点的元素值都大于等于其子结点（如果子节点存在）

 最小堆：最小堆中的最小元素出现在根结点（堆顶）；堆中每个父节点的元素值都小于等于其子结点（如果子节点存在）
 */
func heapSort(){
    
    var ary:Array = [10,100,90,88,70,766,9,]
    
    var heapSize = ary.count - 1
    
    //建立顶堆
    
    var index = (heapSize >> 1);
    
    while index>=0 {
        
        siftDown(index: index, ary: &ary, size:heapSize)
        index -= 1
        
    }
    
    
    while heapSize > 0 {
        
        let maxData = ary[0];
        let data = ary[heapSize]
        ary[heapSize] = maxData
        ary[0] = data
        
        heapSize -= 1
        
        siftDown(index: 0, ary: &ary,size:heapSize)

        
    }

    print(ary)
}


func siftDown(index:Int,ary: inout Array<Int>,size:Int){

    var index = index
    let data = ary[index]
    let half = size >> 1
    
    while index < half {
        
        //默认是左边跟父节点比
        var childIndex = (index << 1) + 1
        var child = ary[childIndex]
        
        let rightIndex = childIndex + 1
        //右字节点比左字节点大
        if rightIndex < size && ary[rightIndex] > child {
            childIndex = rightIndex
            child = ary[childIndex]
            
        }
        
        if data >= child {
            
            break
        }
        
        ary[index] = child
        
        index = childIndex
    }
    ary[index] = data
}
