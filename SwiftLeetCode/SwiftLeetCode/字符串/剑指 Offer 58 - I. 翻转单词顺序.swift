//
//  剑指 Offer 58 - I. 翻转单词顺序.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/17.
//
/**
 输入一个英文句子，翻转句子中单词的顺序，但单词内字符的顺序不变。为简单起见，标点符号和普通字母一样处理。例如输入字符串"I am a student. "，则输出"student. a am I"。

  

 示例 1：

 输入: "the sky is blue"
 输出: "blue is sky the"
 示例 2：

 输入: "  hello world!  "
 输出: "world! hello"
 解释: 输入字符串可以在前面或者后面包含多余的空格，但是反转后的字符不能包括。
 示例 3：

 输入: "a good   example"
 输出: "example good a"
 解释: 如果两个单词间有多余的空格，将反转后单词间的空格减少到只含一个。


 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/fan-zhuan-dan-ci-shun-xu-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import Foundation

func reverseWords(_ s: String) -> String {

    var s = s
    let whitespace = NSCharacterSet.whitespaces
    s = s.trimmingCharacters(in: whitespace)
    
    let sary = Array(s)
    var res = Array<String>()
    var j:Int = s.count - 1
    var i:Int = j
    
    while i>0 {
        
        while i>=0 && sary[i] != " "  {
            
            i-=1
        }
        
        
        let startIndex = s.index(s.startIndex, offsetBy: i+1)
        let endIndex =  s.index(s.startIndex, offsetBy: j+1)
        let newStr = String(s[startIndex..<endIndex])
    
     
        res.append(newStr+(i > 0 ?" ":""))
       
        
     
        
        while i>=0 && sary[i] == " "  {
            
            i-=1
        }
        
        j=i
        
      
    }
    
  
    let stringRepresentation = res.joined(separator:"")
    
    return stringRepresentation
    
}

func reverseString(_ s: inout [Character]) {
       
       //思路双指针
       
       var firstIndex = 0
       var lastIndex = s.count - 1
       let mindIndex = s.count >> 1

       while(firstIndex != mindIndex){

           let temp = s[firstIndex]

           s[firstIndex] = s[lastIndex]
           s[lastIndex] = temp

               firstIndex += 1
               lastIndex -= 1
       }
   }

/**
 public ListNode oddEvenList(ListNode head) {
        if(head == null || head.next == null) return head;
        ListNode even = head.next;
        ListNode odd = head;
        ListNode even_head = even;
        ListNode odd_head = odd;
        while(even != null && even.next != null){
            odd.next = even.next;
            odd = even.next;
            even.next = odd.next;
            even = odd.next;
        }
        odd.next = even_head;
        head = odd_head;
        return head;
    }

作者：norazh
链接：https://leetcode-cn.com/problems/odd-even-linked-list/solution/dan-xiang-lian-biao-he-an-qi-ou-wei-zhi-he-bing-by/
来源：力扣（LeetCode）
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。
 */


func reverseList1(_ head: ListNode?) -> ListNode? {

    var cur:ListNode? = nil
    var pre = head
    
    while pre != nil {
       
        //保存pre 后面节点
        let temp = pre?.next
        //把pre.nex 为 cur
        pre?.next = cur
        //把pre 赋值给cur
        cur = pre
        //把temp 赋值给pre（temp 是后面的节点）
        pre = temp

    }

    return cur

    }
