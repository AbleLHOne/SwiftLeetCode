//
//  剑指 Offer 55 - II. 平衡二叉树.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/16.
//
/**
 输入一棵二叉树的根节点，判断该树是不是平衡二叉树。如果某二叉树中任意节点的左右子树的深度相差不超过1，那么它就是一棵平衡二叉树。

  

 示例 1:

 给定二叉树 [3,9,20,null,null,15,7]

     3
    / \
   9  20
     /  \
    15   7
 返回 true 。

 示例 2:

 给定二叉树 [1,2,2,3,3,null,null,4,4]

        1
       / \
      2   2
     / \
    3   3
   / \
  4   4
 返回 false 。



 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/ping-heng-er-cha-shu-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Foundation

func isBalanced(_ root: TreeNode?) -> Bool {


    
    return recur(root) != -1

}


func recur(_ root: TreeNode?) -> Int {
    
    if root == nil {
        
        return 0
    }
    
    let leftCount = recur(root?.left)
    
    if leftCount == -1 {
        
        return -1
    }
    
    let rightCount = recur(root?.right)
    
    if rightCount == -1 {
        
        return -1
    }
    
    
    if abs(leftCount - rightCount) < 2 {
        
      return  max(leftCount, rightCount)+1
        
    }
    
    
    return -1
    
    
    
    
}
