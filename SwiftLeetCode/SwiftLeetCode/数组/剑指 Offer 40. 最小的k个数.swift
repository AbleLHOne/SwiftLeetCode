//
//  剑指 Offer 40. 最小的k个数.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/10.
//
/**
 输入整数数组 arr ，找出其中最小的 k 个数。例如，输入4、5、1、6、2、7、3、8这8个数字，则最小的4个数字是1、2、3、4。

  

 示例 1：

 输入：arr = [3,2,1], k = 2
 输出：[1,2] 或者 [2,1]
 示例 2：

 输入：arr = [0,1,2,1], k = 1
 输出：[0]

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/zui-xiao-de-kge-shu-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import Foundation

func getLeastNumbers(_ arr: [Int], _ k: Int) -> [Int] {

    if k==0 {
        
        return []
    }
    var dataAry = Array<Int>()
    var arr = arr
    // 原地不断划分数组
    partitionArray(&arr, 0, arr.count - 1, k);
    for x in 0..<k {
        
        dataAry.append(arr[x])
    }
    return dataAry
}

func partitionArray(_ arr: inout [Int], _ lo: Int, _ hi: Int, _ k: Int) {
    
    if lo >= hi {
        return
    }
    let m = partition(&arr, lo, hi)
    if k == m {
        return
    }else if(k<m){
        partitionArray(&arr, lo, m-1,k)
    }else{
        partitionArray(&arr, m+1, hi,k)
    }
}
func partition(_ arr: inout [Int], _ lo: Int, _ hi: Int) -> Int{
    
    //! 选择最后一个值 为锚点，
         let pivot = arr[hi]
         var left = lo-1

         for j in lo...hi-1 {
           if arr[j] <= pivot {
             left += 1
             arr.swapAt(left, j)
           }
         }
         arr.swapAt(left+1, hi)
         return left+1
}



//func getLeastNumbers(_ arr: [Int], _ k: Int) -> [Int] {
//
//    var arr = arr
//    var heapSize = arr.count - 1
//    var dataAry = Array<Int>()
//    //建立顶堆
//
//    var index = (heapSize >> 1);
//
//    while index>=0 {
//
//
//        siftDown2(index: index, ary: &arr, size:heapSize)
//        index -= 1
//
//    }
//
//    while heapSize > k {
//
//        let maxData = arr[0];
//        let data = arr[heapSize]
//        arr[heapSize] = maxData
//        arr[0] = data
//
//        heapSize -= 1
//
//        siftDown2(index: 0, ary: &arr,size:heapSize)
//
//    }
//
//    for x in 0..<k {
//
//        dataAry.append(arr[x])
//
//    }
//
//
//
//
//    return dataAry
//
//}
//
//
//func siftDown2(index:Int,ary: inout Array<Int>,size:Int){
//
//    var index = index
//    let data = ary[index]
//    let half = size >> 1
//
//    while index < half {
//
//        //默认是左边跟父节点比
//        var childIndex = (index << 1) + 1
//        var child = ary[childIndex]
//
//        let rightIndex = childIndex + 1
//        //右字节点比左字节点大
//        if rightIndex < size && ary[rightIndex] > child {
//            childIndex = rightIndex
//            child = ary[childIndex]
//
//        }
//
////        if data >= child {
////
////            break
////        }
////
//        ary[index] = child
//
//        index = childIndex
//    }
//    ary[index] = data
//}
