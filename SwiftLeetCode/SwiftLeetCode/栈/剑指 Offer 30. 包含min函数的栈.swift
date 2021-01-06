//
//  剑指 Offer 30. 包含min函数的栈.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/3.
//

/**
 定义栈的数据结构，请在该类型中实现一个能够得到栈的最小元素的 min 函数在该栈中，调用 min、push 及 pop 的时间复杂度都是 O(1)。

  

 示例:

 MinStack minStack = new MinStack();
 minStack.push(-2);
 minStack.push(0);
 minStack.push(-3);
 minStack.min();   --> 返回 -3.
 minStack.pop();
 minStack.top();      --> 返回 0.
 minStack.min();   --> 返回 -2.

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/bao-han-minhan-shu-de-zhan-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import Foundation

class MinStack {
    
    var stackAry = Array<Any>()
    /** initialize your data structure here. */
    init() {
       
    }
    
    
    var minNumber = Int.max
    
    func push(_ x: Int) {

    
        if minNumber >= x {
          
            stackAry.append(minNumber)
            minNumber = x
        }
        
        stackAry.append(x)
    }
    
    func pop() {

        let number:Int = stackAry.remove(at: stackAry.count - 1) as! Int
        
        if number == minNumber {
            
            minNumber = stackAry.remove(at: stackAry.count - 1) as! Int
        }
        
    }
    
    func top() -> Int {

        if stackAry.count == 0 {
            
            return -1
        }
        
        return stackAry[stackAry.count - 1] as! Int
    }
    
    func min() -> Int {

        
        return minNumber
    }
    
 
}
