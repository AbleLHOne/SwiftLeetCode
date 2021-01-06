//
//  剑指 Offer 24. 反转链表.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/2.
//
/**
 
 定义一个函数，输入一个链表的头节点，反转该链表并输出反转后链表的头节点。

  

 示例:

 输入: 1->2->3->4->5->NULL
 输出: 5->4->3->2->1->NULL

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/fan-zhuan-lian-biao-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 
 
 */

import Foundation

func reverseList(_ head: ListNode?) -> ListNode? {

    //双指针 栈 递归
    
    var cur:ListNode? = nil
    var pre = head
    
    while pre != nil {
       
        //保存pre 后面节点
        let temp = pre?.next
        //把pre.nex 为 cur
        pre?.next = cur
        //把pre 赋值给cur
        cur = pre
        //把temp 赋值给pre（temp 是后面的节点）
        pre = temp

    }

    return cur

}
