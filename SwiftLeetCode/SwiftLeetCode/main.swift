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


let solution = Solution()

let node1:TreeNode = TreeNode(1);
let node2:TreeNode = TreeNode(2);
let node3:TreeNode = TreeNode(3);
let node4:TreeNode = TreeNode(4);
let node5:TreeNode = TreeNode(5);
let node6:TreeNode = TreeNode(6);
let node7:TreeNode = TreeNode(7);
let node8:TreeNode = TreeNode(8);
node1.left = node2
node1.right = node3
node2.left = node4
node4.right = node8
//solution.mirrorTree(node1)

let solution1 = Solution1()

print("深度 ==",solution1.maxDepth(node1))
