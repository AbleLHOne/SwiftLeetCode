//
//  剑指 Offer 32 - I. 从上到下打印二叉树.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/5.
//
/**
 
 从上到下打印出二叉树的每个节点，同一层的节点按照从左到右的顺序打印。

 
 例如:
 给定二叉树: [3,9,20,null,null,15,7],

     3
    / \
   9  20
     /  \
    15   7
 返回：

 [3,9,20,15,7]

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/cong-shang-dao-xia-da-yin-er-cha-shu-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import Foundation

func levelOrder(_ root: TreeNode?) -> [Int] {

    if (root == nil) {
        
        return []
    }
    
    var dataAry = Array<Int>()
    var queue:Array = Array<Any>()
    
    queue.append(root as Any)
    
    while queue.count != 0 {
        
        
        let node:TreeNode = queue.remove(at: 0) as! TreeNode;
        
        print(node.val)
        
        dataAry.append(node.val)

    
        if (node.left != nil ) {
            
            queue.append(node.left!);
        }
            
        if (node.right != nil ) {
            queue.append(node.right!);
        }
    
    }
    


    return dataAry
}
