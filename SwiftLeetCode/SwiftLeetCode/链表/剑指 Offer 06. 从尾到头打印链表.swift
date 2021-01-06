//
//  剑指 Offer 06. 从尾到头打印链表.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/1.
//


/**
 
 输入一个链表的头节点，从尾到头反过来返回每个节点的值（用数组返回）。

  

 示例 1：

 输入：head = [1,3,2]
 输出：[2,3,1]
 */

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

import Foundation

func reversePrint(_ head: ListNode2?) -> [Int] {

    var head = head
    var array = Array<Int>()
    
    while head != nil {
        
        
        array.append(head!.val)
        
        head = head!.next
        
      
    }
    
    
    var length = array.count - 1
    var newArray = Array<Int>()
    while length >= 0 {
        
        newArray .append(array[length])
        
        length -= 1
    }
    
    return newArray
}
