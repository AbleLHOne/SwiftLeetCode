//
//  剑指 Offer 54. 二叉搜索树的第k大节点.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/10.
//
/**
 给定一棵二叉搜索树，请找出其中第k大的节点。

  

 示例 1:

 输入: root = [3,1,4,null,2], k = 1
    3
   / \
  1   4
   \
    2
 输出: 4
 示例 2:

 输入: root = [5,3,6,2,4,null,null,1], k = 3
        5
       / \
      3   6
     / \
    2   4
   /
  1
 输出: 4

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/er-cha-sou-suo-shu-de-di-kda-jie-dian-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 
 
 */
import Foundation

var res = 0
var count = 0
func kthLargest(_ root: TreeNode?, _ k: Int) -> Int {

    //思路 中序遍历
    count = k
    traverse(root)
    return res
}

func traverse(_ root: TreeNode?) {
    
    if root == nil {
        return
    }
    traverse(root?.right)
    if count == 0 {return}
    count -= 1
    if count == 0 {
        res = root!.val
    }
    traverse(root?.left)
    
}
