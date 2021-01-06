//
//  main.swift
//  SwiftLeetCode
//
//  Created by lihao on 2020/11/28.
//

import Foundation

print("Hello, World!")


//Definition for a binary tree node.
  public class TreeNode {
      public var val: Int
      public var left: TreeNode?
      public var right: TreeNode?
      public init(_ val: Int) {
          self.val = val
          self.left = nil
          self.right = nil
      }
  }


//let solution = Solution()
//
//let node1:TreeNode = TreeNode(1);
//let node2:TreeNode = TreeNode(2);
//let node3:TreeNode = TreeNode(3);
//let node4:TreeNode = TreeNode(4);
//let node5:TreeNode = TreeNode(5);
//let node6:TreeNode = TreeNode(6);
//let node7:TreeNode = TreeNode(7);
//let node8:TreeNode = TreeNode(8);
//node1.left = node2
//node1.right = node3
//node2.left = node4
//node4.right = node8
//////solution.mirrorTree(node1)
//
//let solution1 = Solution1()
//
//print("深度 ==",solution1.maxDepth(node1))



/**
 ===================
 算法排序
 
 */
//bubbleSort1()
//selectSort()
//heapSort()
//insterSort()
//binarySearch(number: 4)

//let solution = Solution7()
//
//var n1 = [1,2,3,0,0,0]
//let n2 = [2,5,]

//let data2 = [
//    [1,   4,  7, 11, 15],
//    [2,   5,  8, 12, 19],
//    [3,   6,  9, 16, 22],
//    [10, 13, 14, 17, 24],
//    [18, 21, 23, 26, 30]
//  ]

//let data2 = [
//    [1],
//  ]

//solution.merge(&n1, 3, n2, 2)

//print(findNumberIn2DArray(data2, 2))

//print(replaceSpace("We are happy."))






public class ListNode2 {
     public var val: Int
     public var next: ListNode2?
     public init(_ val: Int) {
         self.val = val
         self.next = nil
     }
 }
//
//let node1 = ListNode(1)
//let node2 = ListNode(2)
//let node3 = ListNode(3)
//let node4 = ListNode(4)

//node1.next = node2
//node2.next = node3
//node3.next = node4
//reversePrint(node1)


//let data = [1,2,3,4]
//
//let data4 = [9,3,15,20,7]

//print(buildTree(data, data4))


//print(minArray(data))

//print(fib(95))

//print(myPow(2, 10))

//print(printNumbers(0))

//deleteNode(node1, 1)


//print(exchange(data))


//print(reverseList(node1) as Any)




let node1:TreeNode = TreeNode(1);
let node2:TreeNode = TreeNode(2);
let node3:TreeNode = TreeNode(3);
let node4:TreeNode = TreeNode(4);
let node5:TreeNode = TreeNode(5);
//
//
node1.left = node2
node1.right = node3

node2.left = node4
node3.right = node5
//
//print(isSubStructure(node1, node2))



// let minStack = MinStack()
//
//minStack.push(-2)
//minStack.push(0)
//minStack.push(-3)
//
//print(minStack.min())
//minStack.pop();
//print(minStack.top())
//print(minStack.min())

let data = [1,3,2,6,5]
//
//let data2 = [4,3,5,1,2]
//
//
//print(validateStackSequences(data, data2))


//print(levelOrder(node1))

print(verifyPostorder(data))

