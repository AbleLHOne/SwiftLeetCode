//
//  剑指 Offer 07. 重建二叉树.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/1.
//


/**
 输入某二叉树的前序遍历和中序遍历的结果，请重建该二叉树。假设输入的前序遍历和中序遍历的结果中都不含重复的数字。

  

 例如，给出

 前序遍历 preorder = [3,9,20,15,7]
 中序遍历 inorder = [9,3,15,20,7]
 返回如下的二叉树：

     3
    / \
   9  20
     /  \
    15   7

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/zhong-jian-er-cha-shu-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Foundation
//重建二叉树.

func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
    
    
    if ( preorder.count == 0) {
        
        return nil;
      }

    let root = TreeNode(preorder[0])

    var stack = Array<TreeNode>()
    stack.append(root)
    
    let length = preorder.count
    var index = 1
    var inorderIndex = 0


    while index < length {
        
        let data = preorder[index]
        var node = stack.last
        
        //若上一个元素不等于中序遍历下标指向的元素，则将当前元素作为其上一个元素的左子节点，并将当前元素压入栈内。
        if inorder[inorderIndex] != node?.val {
            
            node!.left = TreeNode(data)
            stack.append(node!.left!)
            
        }else{
            
            while stack.count != 0 && stack.last?.val == inorder[inorderIndex] {
                
                node = stack.popLast()
                inorderIndex += 1
                
            }
            
            node?.right = TreeNode(data)
            stack.append(node!.right!)
        }
      
        index += 1
    }

    return root
}

/**
 class Solution {
     public TreeNode buildTree(int[] preorder, int[] inorder) {
     //把前序遍历的值和中序遍历的值放到list中
         List<Integer> preorderList = new ArrayList<>();
         List<Integer> inorderList = new ArrayList<>();
         for (int i = 0; i < preorder.length; i++) {
             preorderList.add(preorder[i]);
             inorderList.add(inorder[i]);
         }
         return builder(preorderList, inorderList);
     }

     private TreeNode builder(List<Integer> preorderList, List<Integer> inorderList) {
         if (inorderList.isEmpty())
             return null;
         //前序遍历的第一个值就是根节点
         int rootVal = preorderList.remove(0);

         //创建跟结点
         TreeNode root = new TreeNode(rootVal);

         // 递归构建左右子树
         // 先找到根节点在中序遍历中的位置，进行划分
         int rootindex = inorderList.indexOf(rootVal);

         // 构建左子树，范围 [0:rootindex)
         root.left = builder(preorderList, inorderList.subList(0, rootindex));

         // 构建右子树，范围 (rootindex:最后的位置]
         root.right = builder(preorderList, inorderList.subList(rootindex + 1, inorderList.size()));
         // 返回根节点
         return root;
     }
 }

 */
