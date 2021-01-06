//
//  剑指 Offer 22. 链表中倒数第k个节点.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/2.
//

/**
 输入一个链表，输出该链表中倒数第k个节点。为了符合大多数人的习惯，本题从1开始计数，即链表的尾节点是倒数第1个节点。例如，一个链表有6个节点，从头节点开始，它们的值依次是1、2、3、4、5、6。这个链表的倒数第3个节点是值为4的节点。

  

 示例：

 给定一个链表: 1->2->3->4->5, 和 k = 2.

 返回链表 4->5.

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/lian-biao-zhong-dao-shu-di-kge-jie-dian-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Foundation
func getKthFromEnd(_ head: ListNode?, _ k: Int) -> ListNode? {

    //思路 使用快慢指针
    
    if head == nil {
        
        return head
    }
    
    var firstNode = head
    var lastNode = head
    var index = 0
    
    while firstNode != nil {
        
        if index >= k {
            
            lastNode = lastNode?.next
            
        }
        index+=1
        firstNode = firstNode?.next
    }
    
    
    return lastNode
    
}
