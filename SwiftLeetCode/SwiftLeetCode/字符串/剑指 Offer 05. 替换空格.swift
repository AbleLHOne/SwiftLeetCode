//
//  剑指 Offer 05. 替换空格.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/1.
//


/**
 请实现一个函数，把字符串 s 中的每个空格替换成"%20"。

 
 示例 1：

 输入：s = "We are happy."
 输出："We%20are%20happy."

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/ti-huan-kong-ge-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

import Foundation


func replaceSpace(_ s: String) -> String {

    //思路双指针方法  1.用一个指针指向末尾 用另一指针指向空格处 算出之间的个数 进行向后移动
    
    //查找有几处空格 进行空间扩张
    var s = s
    var beginIndex = 0
    var last = s.count - 1
    var count = 0
    
    while beginIndex < s.count {
        
        let data:Character =  s[s.index(s.startIndex,offsetBy: beginIndex)]
        if  data == " "{
            
            count+=1
        }
        
        beginIndex += 1
    }
    
    let str = "%20"
    
    let length = count * str.count - count
    
    for _ in 0..<length {
        s += "_"
    }
    
    var strLength = s.count - 1

    var strchars = Array(s)
    
    while  strLength >= 0 && strLength > last  {
        
        let data = strchars[last]
        if  data == " "  {
            
            strchars[strLength] = "0"
            strLength -= 1
            strchars[strLength] = "2"
            strLength -= 1
            strchars[strLength] = "%"
            strLength -= 1
        }else{
            
            strchars[strLength] = strchars[last]
            strLength -= 1
          
        }
       
        last -= 1
       
    }
    
    
    
    return String(strchars)
}


