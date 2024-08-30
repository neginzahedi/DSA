//
//  MergeSortedArray.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-30.
//

import Foundation

/// Merges two sorted arrays into the first array in-place.
/// - Parameters:
///   - nums1: The first sorted array, which has enough space to hold the elements of both arrays.
///   - m: The number of elements in `nums1` that are part of the merge.
///   - nums2: The second sorted array.
///   - n: The number of elements in `nums2`.
///
/// The elements of `nums1` and `nums2` are merged into a single sorted array,
/// stored in `nums1`. The remaining space in `nums1` is assumed to be filled with zeros
/// which will be overwritten during the merge.
func mergeSortedArrays(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
    
    // If nums2 is empty, no need to merge
    guard n > 0 else { return }
    
    // If nums1 has no elements, replace nums1 with nums2
    guard m > 0 else {
        nums1 = nums2
        return
    }
    
    // Pointers for nums1, nums2, and the last index of nums1
    var index1 = m - 1
    var index2 = n - 1
    var mergeIndex = nums1.count - 1
    
    // Merge the arrays from the end
    while index1 >= 0 && index2 >= 0 {
        if nums2[index2] > nums1[index1] {
            nums1[mergeIndex] = nums2[index2]
            index2 -= 1
        } else {
            nums1[mergeIndex] = nums1[index1]
            index1 -= 1
        }
        mergeIndex -= 1
    }
    
    // If there are remaining elements in nums2, copy them over
    while index2 >= 0 {
        nums1[mergeIndex] = nums2[index2]
        mergeIndex -= 1
        index2 -= 1
    }
}
