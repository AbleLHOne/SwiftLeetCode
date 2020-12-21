//
//  翻转二叉树.swift
//  SwiftLeetCode
//
//  Created by lihao on 2020/12/8.
//
/**
 翻转一棵二叉树。

 示例：
 输入：

      4
    /   \
   2     7
  / \   / \
 1     3      6     9
 输出：

      4
    /   \
   7     2
  / \   / \
 9     6      3    1


 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/invert-binary-tree
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Foundation

class Solution6 {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
    
        
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
