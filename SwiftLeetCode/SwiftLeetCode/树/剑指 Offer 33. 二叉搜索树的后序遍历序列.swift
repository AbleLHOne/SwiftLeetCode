//
//  剑指 Offer 33. 二叉搜索树的后序遍历序列.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/6.
//


/**
 
 输入一个整数数组，判断该数组是不是某二叉搜索树的后序遍历结果。如果是则返回 true，否则返回 false。假设输入的数组的任意两个数字都互不相同。

  

 参考以下这颗二叉搜索树：

      5
     / \
    2   6
   / \
  1   3
 示例 1：

 输入: [1,6,3,2,5]
 输出: false
 示例 2：

 输入: [1,3,2,6,5]
 输出: true

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/er-cha-sou-suo-shu-de-hou-xu-bian-li-xu-lie-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 
 */

import Foundation

func verifyPostorder(_ postorder: [Int]) -> Bool {

    //思路找出根节点
    
    let root:Int = postorder.last!
    
    //分开左子树和右子树 二叉搜索树 左子树 小于根节点 右子树 大于根节点
    
    var leftAry = Array<Int>()
    var rightAry = Array<Int>()
    
    var index = 0
    
    while index < postorder.count {
        
        let data = postorder[index]
        
        if data < root {
            
            leftAry.append(data)
            
        }else{
            
            rightAry.append(data)
        }
        
        index+=1
    }
    
    //判断左右子树 是否二叉搜索树
    
    var isLeftSearchTree:Bool  = true
    
    if leftAry.count > 0 {
        
        isLeftSearchTree = verifyPostorder(leftAry)
    }
    
    var isRightSearchTree:Bool  = true
    
    if rightAry.count > 0 {
        
        isRightSearchTree = verifyPostorder(rightAry)
    }
    

    return isLeftSearchTree&&isRightSearchTree
}
