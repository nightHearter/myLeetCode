//
//  me.swift
//  leetcode
//
//  Created by 张一奇 on 2019/1/14.
//  Copyright © 2019年 张一奇. All rights reserved.
//

/**
 给定一个排序数组，你需要在原地删除重复出现的元素，使得每个元素只出现一次，返回移除后数组的新长度。
 
 不要使用额外的数组空间，你必须在原地修改输入数组并在使用 O(1) 额外空间的条件下完成。
 */
// 注意，数组有序哦。例如 [0,0,1,1,1,2,2,3,3,4]
// 你不需要考虑数组中超出新长度后面的元素。

class shuzuquchong1 {
    
    func excute() {
        
        var nums: [Int] = [0,0,1,1,1,2,2,3,3,4]
        
        let count = removeDuplicates(&nums)
        
        print(nums, count)
        
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
