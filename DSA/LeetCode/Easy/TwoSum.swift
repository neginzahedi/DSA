//
//  TwoSum.swift
//  DSA
//

import Foundation

/**
 Given an array of integers `nums` and an integer `target`, return indices of the two numbers such that they add up to `target`.
 
 - Parameters:
 - nums: An array of integers.
 - target: The target integer.
 
 - Returns: An array containing indices of the two numbers that add up to `target`. If no such pair is found, an empty array is returned.
 
 ## Example ##
 ```swift
 let result = twoSum([2,7,11,15],9)
 // Output: [0,1]
 ```
 
 ## Solutions ##
 Below are three solutions, each with different time and space complexities.
 */
class TwoSumSolution {
    /**
     Solution 1: Optimized Approach (Lower Complexity)
     
     - Complexity:
        - Time complexity: O(n), where `n` is the number of elements in `nums`.
        - Space complexity: O(n), where `n` is the number of elements in `nums`.
     */
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var indexMap = [Int: Int]()
        
        for i in 0..<nums.count {
            let complement = target - nums[i]
            if let matchIndex = indexMap[complement] {
                return [i, matchIndex]
            }
            indexMap[nums[i]] = i
        }
        
        return []
    }
    
    /**
     Solution 2: Brute Force Approach
     
     - Complexity:
        - Time complexity: O(n²), where `n` is the number of elements in `nums`.
        - Space complexity: O(1), no extra space is used.
     */
    func twoSumBruteForce(_ nums: [Int], _ target: Int) -> [Int] {
        
        for i in 0..<nums.count {
            for j in (i+1)..<nums.count {
                if nums[i] + nums[j] == target {
                    return[i,j]
                }
            }
        }
        return []
    }
    
    /**
     Solution 3: Two-Pointer Approach (After Sorting)
     
     - Complexity:
        - Time complexity: O(n log n), where `n` is the number of elements in `nums` due to the sorting step.
        - Space complexity: O(n), for the additional sorted array and mapping back to original indices.
     */
    func twoSumTwoPointer(_ nums: [Int], _ target: Int) -> [Int] {
        let sortedArr = nums.sorted()
        var first = 0
        var last = nums.count - 1
        
        while first < last {
            let sum = sortedArr[first] + sortedArr[last]
            
            if sum > target {
                last -= 1
            } else if sum < target {
                first += 1
            } else {
                // Find original indices in nums
                let firstIndex = nums.firstIndex(of: sortedArr[first])!
                let lastIndex = nums.lastIndex(of: sortedArr[last])!
                return [firstIndex, lastIndex]
            }
        }
        
        return []
    }
}

