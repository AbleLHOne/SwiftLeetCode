//
//  剑指 Offer 27_二叉树的镜像.swift
//  SwiftLeetCode
//
//  Created by lihao on 2020/11/30.
//

//剑指 Offer 27. 二叉树的镜像
//请完成一个函数，输入一个二叉树，该函数输出它的镜像。
//
//例如输入：
//
//     4
//   /   \
//  2     7
// / \   / \
//1   3 6   9
//镜像输出：
//
//     4
//   /   \
//  7     2
// / \   / \
//9   6 3   1
//
//
//
//示例 1：
//
//输入：root = [4,2,7,1,3,6,9]
//输出：[4,7,2,9,6,3,1]


import Foundation


class Solution {
    func mirrorTree(_ root: TreeNode?) -> TreeNode? {

        //层级遍历 二叉树的镜像
        
        var queue:Array = Array<Any>()
        
        if (root == nil) {
            return root
        }
       
        queue.append(root!)
        while (queue.count != 0 ) {
            
        let node:TreeNode = queue.remove(at: 0) as! TreeNode;
        
        print(node.val)
    
        let temp = node.left;
        node.left = node.right;
        node.right = temp;
    
        if (node.left != nil ) {
            
            queue.append(node.left!);
        }
            
        if (node.right != nil ) {
            queue.append(node.right!);
        }
            
    }
        
        return root
    }
}
