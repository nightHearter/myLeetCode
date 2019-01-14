//
//  me.swift
//  leetcode
//
//  Created by 张一奇 on 2019/1/14.
//  Copyright © 2019年 张一奇. All rights reserved.
//

import UIKit

class shuzuquchong1 {
    
    func excute() {
        
        var nums = [0,0,1,1,1,2,2,3,3,4]
        
        _ = removeDuplicates(&nums)
        
        print(nums, nums.count)
        
    }
    
    private func removeDuplicates(_ nums: inout [Int]) -> Int {
        
        recursionRemoveDuplicates(nums: &nums, index: 0)
        
        return nums.count
    }
    
    private func recursionRemoveDuplicates(nums: inout [Int], index: Int) {
        
        if nums.count - 1 < index {
            return;
        }
        
        let flag = nums[index]
        var removeIndex = -1
        
        for (i, obj) in nums.enumerated() {
            
            if i > index && flag == obj {
                
                removeIndex = i
                break
            }
        }
        
        if removeIndex != -1 {
            
            nums.remove(at: removeIndex)
            
            recursionRemoveDuplicates(nums: &nums, index: index)
            
        } else {
            
            recursionRemoveDuplicates(nums: &nums, index: index + 1)
        }
        
    }

}
