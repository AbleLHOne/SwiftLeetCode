//
//   相同的树.swift
//  SwiftLeetCode
//
//  Created by lihao on 2020/12/4.
//

/**
 给定两个二叉树，编写一个函数来检验它们是否相同。

 如果两个树在结构上相同，并且节点具有相同的值，则认为它们是相同的。

 示例 1:

 输入:       1         1
           / \       / \
          2   3     2   3

         [1,2,3],   [1,2,3]

 输出: true
 示例 2:

 输入:      1          1
           /           \
          2             2

         [1,2],     [1,null,2]

 输出: false
 示例 3:

 输入:       1         1
           / \       / \
          2   1     1   2

         [1,2,1],   [1,1,2]

 输出: false

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/same-tree
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Foundation

/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init() { self.val = 0; self.left = nil; self.right = nil; }
 *     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
 *     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
 *         self.val = val
 *         self.left = left
 *         self.right = right
 *     }
 * }
 */
class Solution3 {
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
     
        if (p == nil && q == nil) {
                   return true;
               } else if (p == nil || q == nil) {
                   return false;
               } else if (p!.val != q!.val) {
                   return false;
               } else {
                   return isSameTree(p!.left, q!.left) && isSameTree(p!.right, q!.right);
               }
    }
    
}
