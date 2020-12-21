//
//  二分查找.swift
//  SwiftLeetCode
//
//  Created by lihao on 2020/12/20.
//

import Foundation
/**
 二分查找.
 */
func binarySearch(number:Int){
    
    let ary:Array = [1,2,3,4,6,7,9,]
    var end = ary.count
    var begin = 0
    var mid = (end+begin) >> 1;
    
    var isSearchOK = false

    while end != begin {
        
        mid = (end+begin) >> 1;
        let cur = ary[mid]
        
        if cur > number {
            
            end = mid
        
        }else if cur == number{
            
            isSearchOK = true
            
            break;
            
        }else{
            
            begin = mid + 1
        }

    }
    
    
    
    print("isSearchOK===",isSearchOK)
    
}
