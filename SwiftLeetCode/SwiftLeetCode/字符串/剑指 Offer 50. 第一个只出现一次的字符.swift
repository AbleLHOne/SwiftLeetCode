//
//  剑指 Offer 50. 第一个只出现一次的字符.swift
//  SwiftLeetCode
//
//  Created by lihao on 2021/1/13.
//
/**
 在字符串 s 中找出第一个只出现一次的字符。如果没有，返回一个单空格。 s 只包含小写字母。

 示例:

 s = "abaccdeff"
 返回 "b"

 s = ""
 返回 " "

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/di-yi-ge-zhi-chu-xian-yi-ci-de-zi-fu-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
import Foundation

func firstUniqChar(_ s: String) -> Character {

    var map:Dictionary = [Character: Bool]()
    
    var index = 0
    
    let sAry = Array(s)
    
    while index < s.count {

        let str = sAry[index]
        
        var count:Bool = false
        if map[str] == nil {
            
            count = true
        }else{
            
            count = false
        }
        

        map[str] = count
        
        index += 1
    }
    
    var firstStr:Character = " "
    index = 0
    while index < s.count {

        let str = sAry[index]
        
        let count:Bool = map[str]!

        if count {
            
            firstStr = str
            
            break
        }
        
        index += 1
    }
    
    return firstStr
}
