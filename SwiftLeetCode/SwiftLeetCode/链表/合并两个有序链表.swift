//
//  合并两个有序链表.swift
//  SwiftLeetCode
//
//  Created by lihao on 2020/12/20.
//
/**
 将两个升序链表合并为一个新的 升序 链表并返回。新链表是通过拼接给定的两个链表的所有节点组成的。

  

 示例：

 输入：1->2->4, 1->3->4
 输出：1->1->2->3->4->4

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/merge-two-sorted-lists
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import Foundation


 //* Definition for singly-linked list.
// public class ListNode {
//    public var val: Int
//    public var next: ListNode?
//    public init() { self.val = 0; self.next = nil; }
//    public init(_ val: Int) { self.val = val; self.next = nil; }
//    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
// }
//
//
//class Solution8 {
//    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
//
//        let listNode:ListNode = ListNode(0)
//
//        var  current = listNode;
//        var l1 = l1
//        var l2 = l2
//
//        while(l1 != nil && l2 != nil){
//
//            if(l1!.val <= l2!.val){
//
//                current.next=l1;
//                l1 = l1?.next;
//
//            }else{
//
//                current.next=l2;
//                l2 = l2?.next;
//            }
//
//            current = current.next!;
//        }
//
//        current.next = l1 == nil ? l2 : l1;
//
//        return listNode.next;
//
//
//    }
//}
