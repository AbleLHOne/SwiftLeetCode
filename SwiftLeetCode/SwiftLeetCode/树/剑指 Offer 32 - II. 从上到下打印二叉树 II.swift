//
//  剑指 Offer 32 - II. 从上到下打印二叉树 II.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/11.
//
/**
 从上到下按层打印二叉树，同一层的节点按从左到右的顺序打印，每一层打印到一行。

  

 例如:
 给定二叉树: [3,9,20,null,null,15,7],

     3
    / \
   9  20
     /  \
    15   7
 返回其层次遍历结果：

 [
   [3],
   [9,20],
   [15,7]
 ]

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/cong-shang-dao-xia-da-yin-er-cha-shu-ii-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import Foundation

func levelOrder2(_ root: TreeNode?) -> [[Int]] {
    
    //思路 层级遍历
    if (root == nil) { return [] }
    
    //层级遍历
    var pathAry:[Array<Int>] = Array()
    var queue:Array = Array<Any>()
    queue.append(root!)
    
    while (queue.count != 0 ) {
        
        var ary = Array<Int>()
        var count = queue.count
        while count > 0 {
                
            
            queue.removeFirst()
            let node:TreeNode = queue.remove(at: 0) as! TreeNode;
            ary.append(node.val)
            
            if (node.left != nil ) {
                
                queue.append(node.left!);
            }
                
            if (node.right != nil ) {
                queue.append(node.right!);
            }
            
            count-=1
            
        }

    pathAry.append(ary)
        
    }
    

    return pathAry
    
}
