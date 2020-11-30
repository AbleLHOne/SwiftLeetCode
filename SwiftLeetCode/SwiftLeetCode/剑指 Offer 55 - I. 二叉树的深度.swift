//
//  剑指 Offer 55 - I. 二叉树的深度.swift
//  SwiftLeetCode
//
//  Created by lihao on 2020/11/30.
//

//输入一棵二叉树的根节点，求该树的深度。从根节点到叶节点依次经过的节点（含根、叶节点）形成树的一条路径，最长路径的长度为树的深度。
//
//例如：
//
//给定二叉树 [3,9,20,null,null,15,7]，
//
//    3
//   / \
//  9  20
//    /  \
//   15   7
//返回它的最大深度 3 。

import Foundation
/**
 每个节点 都要当根节点 ，这点意识不到的就会绕路😓
 */
class Solution1 {
    func maxDepth(_ root: TreeNode?) -> Int {

        if root == nil {
            
            return 0;
        }
        
        
        let leftCount = maxDepth(root?.left)
        let rightCount = maxDepth(root?.right)
        
        return leftCount > rightCount ? leftCount+1 : rightCount+1
    }
    
    
    //        let leftCount = postorder(count: 1, root: root?.left,isLeft: true)
    //        let rightCount = postorder(count: 1, root: root?.right,isLeft: false)
    
    func postorder(count:Int,root: TreeNode?,isLeft:Bool) -> Int {
        
        if root == nil {
            
            return count
        }
        
        let length = count+1
        
        var node :TreeNode?;
        var isLeft = isLeft
       
        if isLeft {
          
            if root?.left == nil && root!.right != nil {
                
                node = root?.right
                isLeft = false
            }else{
                                
                node = root?.left
            }
    
        }else{
            
            if root?.right == nil && root!.left != nil {
                
                node = root?.left
            }else{
                
                node = root?.right
                isLeft = true
            }
        }
        return  postorder(count: length, root: node,isLeft: isLeft);

    }
    
    
}



