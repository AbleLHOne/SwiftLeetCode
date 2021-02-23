//
//  剑指 Offer 34. 二叉树中和为某一值的路径.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/6.
//
/**
 输入一棵二叉树和一个整数，打印出二叉树中节点值的和为输入整数的所有路径。从树的根节点开始往下一直到叶节点所经过的节点形成一条路径。

  

 示例:
 给定如下二叉树，以及目标和 sum = 22，

               5
              / \
             4   8
            /   / \
           11  13  4
          /  \    / \
         7    2  5   1
 返回:

 [
    [5,4,11,2],
    [5,8,4,5]
 ]

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/er-cha-shu-zhong-he-wei-mou-yi-zhi-de-lu-jing-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import Foundation

func pathSum(_ root: TreeNode?, _ sum: Int) -> [[Int]] {

    
    var pathAry:[Array<Int>] = Array()
    var stackAry:Array = Array<Int>()
    
    // 根据前序遍历 从根节点出发 需要辅助数据 进行节点路径保存
    findPath(root, sum, &pathAry, sum,&stackAry)
    
    
    
    return pathAry
}
func findPath(_ root: TreeNode?, _ sum: Int,_ pathAry: inout [Array<Int>],_ currenNum: Int, _ stackAry:inout Array<Int>){
    
    
    if root == nil {
        
        return
    }
    
    var currenNum = currenNum

    currenNum -= root!.val
    stackAry.append(root!.val)
    
    if currenNum == 0 && root!.left == nil && root!.right == nil {
        
        pathAry.append(stackAry)
        
    }
    
    findPath(root?.left, sum, &pathAry, currenNum,&stackAry)
    
    findPath(root?.right, sum, &pathAry, currenNum,&stackAry)
    
    
    stackAry.removeLast()
  
   
}

