//
//  shuzuquchongOfficial.swift
//  leetcode
//
//  Created by 张一奇 on 2019/1/14.
//  Copyright © 2019年 张一奇. All rights reserved.
//

import UIKit

class shuzuquchongOfficial {
    
    func excute() {
        
        var nums = [0,0,1,1,1,2,2,3,3,4]
        
        let count = removeDuplicates(&nums)
        
        print(nums, count)
        
    }
    
    private func removeDuplicates(_ nums: inout [Int]) -> Int {
        
        if nums.count == 0 {
            return 0
        }
        
        var i = 0
        for j in 0..<nums.count {
            
            if nums[j] != nums[i] {
                i += 1
                nums[i] = nums[j]
            }
        }
        
        return i + 1
    }

}
