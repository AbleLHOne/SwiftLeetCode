//
//  剑指 Offer 28. 对称的二叉树.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/16.
//

/**
 请实现一个函数，用来判断一棵二叉树是不是对称的。如果一棵二叉树和它的镜像一样，那么它是对称的。

 例如，二叉树 [1,2,2,3,4,4,3] 是对称的。

     1
    / \
   2   2
  / \ / \
 3  4 4  3
 但是下面这个 [1,2,2,null,3,null,3] 则不是镜像对称的:

     1
    / \
   2   2
    \   \
    3    3

  

 示例 1：

 输入：root = [1,2,2,3,4,4,3]
 输出：true
 示例 2：

 输入：root = [1,2,2,null,3,null,3]
 输出：false

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/dui-cheng-de-er-cha-shu-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Foundation

//func isSymmetric(_ root: TreeNode?) -> Bool {
//
//    if root == nil {
//
//        return true
//    }
//
//    return recur1(root?.left, root?.right)
//}
//
//
//func recur1(_ left: TreeNode?,_ right: TreeNode?) -> Bool {
//
//    if right == nil && left == nil {
//
//        return true
//    }
//
//    if left == nil || right == nil || left?.val != right?.val {
//
//        return false
//    }
//
//
//    return recur1(left?.left, right?.right)&&recur1(left?.right, right?.left)
//
//
//}
//
//func mirrorTree(_ root: TreeNode?) -> TreeNode? {
//
//       if root == nil {
//           return root
//       }
//
//       var satck = Array<TreeNode>()
//    satck.append(root!)
//
//       while satck.count > 0 {
//
//           let node = satck.popLast()!
//
//        if node.left != nil {
//
//            satck.append(node.left!)
//
//           }
//
//           if node.right != nil {
//
//            satck.append(node.right!)
//
//           }
//
//           let temp = node.left
//
//           node.left = node.right
//
//           node.right = temp
//
//
//
//       }
//
//       return root
//
//   }


class Solution13 {
  var count = 0
  var res = 0
  
  func kthLargest(_ root: TreeNode?, _ k: Int) -> Int {

      //思路采用中序遍历
      count = k
      dfs(root!)
      return res

  }

  func dfs(_ root: TreeNode?){
      if root == nil {
          return
      }

    dfs(root!.right)

      if count == 0 {

          return
      }

      if count != 0 {
        res = root!.val
          count -= 1
      }

    dfs(root!.left)

  }
}


//lass Solution {
//    public TreeNode lowestCommonAncestor(TreeNode root, TreeNode p, TreeNode q) {
//        if(root == null) return null; // 如果树为空，直接返回null
//        if(root == p || root == q) return root; // 如果 p和q中有等于 root的，那么它们的最近公共祖先即为root（一个节点也可以是它自己的祖先）
//        TreeNode left = lowestCommonAncestor(root.left, p, q); // 递归遍历左子树，只要在左子树中找到了p或q，则先找到谁就返回谁
//        TreeNode right = lowestCommonAncestor(root.right, p, q); // 递归遍历右子树，只要在右子树中找到了p或q，则先找到谁就返回谁
//        if(left == null) return right; // 如果在左子树中 p和 q都找不到，则 p和 q一定都在右子树中，右子树中先遍历到的那个就是最近公共祖先（一个节点也可以是它自己的祖先）
//        else if(right == null) return left; // 否则，如果 left不为空，在左子树中有找到节点（p或q），这时候要再判断一下右子树中的情况，如果在右子树中，p和q都找不到，则 p和q一定都在左子树中，左子树中先遍历到的那个就是最近公共祖先（一个节点也可以是它自己的祖先）
//        else return root; //否则，当 left和 right均不为空时，说明 p、q节点分别在 root异侧, 最近公共祖先即为 root
//    }
//}

//
//func levelOrder(_ root: TreeNode?) -> [[Int]] {
//
//       var res = Array<[Int]>()
//       var queue = Array<TreeNode>()
//
//       if root != nil {
//           queue.append(root!)
//       }
//
//       while(queue.count > 0){
//
//           var temp = Array<Int>()
//
//        for _ in 0...queue.count{
//
//            let node:TreeNode = queue.popLast()!
//
//            temp.append(node.val)
//
//                  if node.left != nil{
//
//                      queue.append(node.left!)
//                  }
//
//                  if node.right != nil{
//
//                      queue.append(node.right!)
//                  }
//            }
//
//           res.append(temp)
//
//
//       }
//
//
//   return res
//
//   }
//func levelOrder(_ root: TreeNode?) -> [[Int]] {
//
//
//       var res = Array<[Int]>()
//       var queue = Array<TreeNode>()
//       queue.append(root!)
//
//       while( queue.count > 0){
//
//
//           var temp = Array<Int>()
//
//           let count = queue.count
//           for _ in 0...count{
//
//                let node = queue.popLast()!
//
//                temp.append(node.val)
//
//                if node.left != nil {
//
//                   queue.append(node.left!)
//                }
//
//                if node.right != nil {
//
//                   queue.append(node.right!)
//                }
//
//           }
//           res.append(temp)
//
//       }
//
//       return  res
//   }

var map = [Int:Int]()
  var preC = Array<Int>()
  func reConstructBinaryTree ( _ pre: [Int],  _ vin: [Int]) -> TreeNode? {
      // write code here
      preC = pre
      
      for n in 0...vin.count{
          
        map.updateValue(vin[n],forKey: n)
          
          return recur(root: 0, leftIndex: 0, rightIndex: vin.count - 1)
      }
    
    return nil
  }
  
  func recur(root:Int,leftIndex:Int,rightIndex:Int) ->TreeNode?{
      
      if leftIndex > rightIndex {
          return nil
      }
      
      let node = TreeNode(preC[root])
      
      let index = map[preC[root]]!
      
    node.left = recur(root: root+1, leftIndex: leftIndex, rightIndex: index-1)
    node.right = recur(root: root+index - leftIndex+1, leftIndex: index+1, rightIndex: rightIndex)
      
      
      return node
  }
  

