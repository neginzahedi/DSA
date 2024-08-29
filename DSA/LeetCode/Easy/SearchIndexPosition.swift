//
//  SearchIndexPosition.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-29.
//

import Foundation

/// Finds the index at which the target should be inserted in the sorted array.
///
/// - Parameters:
///   - nums: A sorted array of integers.
///   - target: The integer value to search for in the array.
/// - Returns: The index at which the target should be inserted to maintain the sorted order.
///
/// This function employs a binary search algorithm, with a time complexity of O(log n),
/// making it efficient for large arrays. It iteratively narrows down the search space by comparing
/// the middle element of the current range to the target. Depending on the comparison, the search
/// range is adjusted until the correct insertion index is found.
func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    
    var leftPointer = 0
    var rightPointer = nums.count - 1
    
    while leftPointer <= rightPointer {
        
        let midPointer = leftPointer + (rightPointer - leftPointer) / 2
        
        if target == nums[midPointer] {
            return midPointer
        } else if target > nums[midPointer] {
            leftPointer = midPointer + 1
        } else {
            rightPointer = midPointer - 1
        }
    }
    
    return leftPointer
}
