//
//  111.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/23.
//

import Foundation

func threeOrders ( _ root: TreeNode?) -> [[Int]] {
       // write code here
       var fArray = Array<Int>()
       
    dfsF(root,&fArray)
       
       return [fArray]
   }
   
func dfsF(_ root: TreeNode?,  _ array:inout Array<Int>){
    
    if root == nil {
        
        return
    }
    
       array.append(root!.val)
       
    dfsF(root!.left,&array)
    dfsF(root!.right,&array)
   }
   
   func dfsM(_ root: TreeNode?,_ array:inout Array<Int>){
       
    dfsM(root!.left,&array)
       
       array.append(root!.val)
   
    dfsM(root!.right,&array)
   }
   
    func dfsL(_ root: TreeNode?,_ array:inout Array<Int>){
       
        dfsL(root!.left,&array)
        dfsL(root!.right,&array)
       array.append(root!.val)
   }

/**
 判断一颗树是否为二叉搜索树及完全二叉树
 递归套路，主要是分解信息和合并左右子树需要提供的信息。
 当前节点是完全二叉树条件：左子树为完全二叉树 右子树也为完全二叉树 且 左树为空时右树必须为空
 当前节点是二叉搜索树条件：左右子树都为搜索树 且 左树根节点值及其根节点右节点都小于当前节点。右树同理
 */
var pre:TreeNode? = TreeNode(-9999)

func judgeIt ( _ root: TreeNode?) -> [Bool] {
       // write code here
       let isBst:Bool = isBST(root)
       let isFull:Bool = isFull1(root)
       
       return [isBst,isFull]
   }
   
   func isBST ( _ root: TreeNode?) -> Bool {
       //前序
       if root == nil {
           
           return true
       }
       
       if ( !isBST(root!.left)){
           
           return false
       }
       
       if root!.val < pre!.val {
           
           return false
       }
       
       pre = root
       
       
       return isBST(root!.right)
   }
   
     func isFull1 ( _ root: TreeNode?) -> Bool{
       
         if root == nil {
             
             return false
         }
         
         //层级遍历
         var queue = Array<TreeNode>()
         queue.append(root!)
        var isCompleted = false
         while queue.count != 0{
             
             let node = queue.popLast()!
             
            if node.left == nil && node.right != nil {
            return false
            }
            if isCompleted && (node.left != nil || node.right != nil) {
            return false
            }
            if node.left == nil || node.right == nil {
            isCompleted = true
            }
            if node.left != nil {
            queue.append(node.left!)
            }
            if node.right != nil {
            queue.append(node.right!)
            }
             
         }
         
        
         return true
       
   }
   


func dfs(_ root: TreeNode?,  _ sum: Int ,  _  currenSum: Int ,   _ isSerchOK: inout Bool ){
       
       
       if root == nil{
           
           return
       }
       
       var currenSum = currenSum
       
       currenSum += root!.val
       
       if currenSum == sum {
           
           isSerchOK = true
       }
       
      dfs(root!.left,sum,currenSum,&isSerchOK)
       
      dfs(root!.right,sum,currenSum,&isSerchOK)
       
       
   }


func mergeTrees ( _ t1: TreeNode?,  _ t2: TreeNode?) -> TreeNode? {
      // write code here
      
      if t1 != nil && t2 != nil {
         
        t1?.left = mergeTrees(t1?.left,t2?.left)
        t1?.right = mergeTrees(t1?.right,t2?.right)

        t1!.val += t2!.val
          
      }
      
      return t1 == nil ? t2 :t1
  }


func ReverseList ( _ head: ListNode?) -> ListNode? {
      // write code here
      if head == nil{
          return head
      }
     
     let newHead = ListNode(0)
     var head = head
     newHead.next = nil
      
      while head != nil {
          
        let temp = head?.next!
          
        head?.next = newHead.next
        newHead.next = head
          
          head = temp
          
      }
      
     return newHead.next
     
  }


func merge11(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {

        var legth = nums1.count - 1
        var n = n - 1
        var m = m - 1
    

       while  m >= 0 || n >= 0{

    
        var temp = 0
        
        if (n == -1){
            
            temp = nums1[m]
            
            m -= 1
        }else if(m == -1){
            
            temp = nums2[n]
            
            n -= 1
            
        }else if(nums1[m] > nums2[n]){
            
            temp = nums1[m]
            m -= 1
        }else{
            temp = nums2[n]
            n -= 1
        }
        
        
        nums1[legth] = temp
         

        legth -= 1

       }
   }


func twoSum22(_ nums: [Int], _ target: Int) -> [Int] {

       var map = [Int:Int]()
       for index in 0...nums.count - 1{

           let data = nums[index]

           if map[target - data] != nil{

            let i:Int = map[target - data]!
            
               return [i,index]
           }
           map.updateValue(index,forKey:data)
       }

       return []
   }


func mergeTrees1(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {

 
      merge(t1,t2)

      return t1

  }

  func merge(_  t1:TreeNode?, _ t2: TreeNode?){
    
        var t1 = t1
    
    
      if  t2 == nil {

          return

      }

      if t1 == nil {

          t1 = t2
      }else{
        
        t1!.val += t2!.val
      }

    var map = [Int:Int]()
    
    let count = map[1] == nil ? 0 : map[1]
    map.updateValue(count!+1, forKey: 1)
    merge(t1?.left,t2?.left)
    merge(t1?.right,t2?.right)

  }
