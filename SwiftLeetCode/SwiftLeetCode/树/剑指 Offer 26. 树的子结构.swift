//
//  剑指 Offer 26. 树的子结构.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/3.
//

/**
 输入两棵二叉树A和B，判断B是不是A的子结构。(约定空树不是任意一个树的子结构)

 B是A的子结构， 即 A中有出现和B相同的结构和节点值。

 例如:
 给定的树 A:

      3
     / \
    4   5
   / \
  1   2
 给定的树 B：

    4
   /
  1
 返回 true，因为 B 与 A 的一个子树拥有相同的结构和节点值。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/shu-de-zi-jie-gou-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import Foundation

func isSubStructure(_ A: TreeNode?, _ B: TreeNode?) -> Bool {

    var isSearchOk = false
    
    if A != nil && B != nil {
        
        if A?.val == B?.val {
        
            isSearchOk = SubStructure(A, B)
        }
        
        if !isSearchOk {
            //查找对应的数据 从而进行递归遍历
            isSearchOk = isSubStructure(A?.left, B)
        }
        
         if !isSearchOk {
            
            isSearchOk = isSubStructure(A?.right, B)
        }
        
    }

    
    return isSearchOk
}

func SubStructure(_ A: TreeNode?, _ B: TreeNode?) -> Bool {
    
    if B == nil { return true} //b 遍历完了
    
    if A == nil { return false }
    
    if A?.val != B?.val {
        
        return false
    }
    
    return SubStructure(A?.left, B?.left)&&SubStructure(A?.right, B?.right)
}
