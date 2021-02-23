//
//  19. 删除链表的倒数第 N 个结点.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/2/21.
//
/**
 给你一个链表，删除链表的倒数第 n 个结点，并且返回链表的头结点。

 进阶：你能尝试使用一趟扫描实现吗？

  

 示例 1：


 输入：head = [1,2,3,4,5], n = 2
 输出：[1,2,3,5]


 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/remove-nth-node-from-end-of-list
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import Foundation

func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
           
   if head == nil {
       
       return head
   }
    
    let dummy:ListNode? = ListNode(0)
   
    dummy?.next = head
    var newHead = head
    var pre = dummy

    var index = 1
    var count = 0

    while newHead != nil {
    newHead = newHead?.next
    count += 1
    }
    
    
    while index < count - n + 1  {
       
            pre = pre?.next
            index+=1
    }
    
    pre?.next = pre?.next?.next
    
    
    return dummy?.next
    
}
