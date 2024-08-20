//
//  RemoveDuplicatesFromSortedArray.swift
//  DSA
//

/**
 Removes duplicates from a sorted array in place, ensuring that each unique element appears only once.
 The relative order of the elements is preserved, and the function returns the count of unique elements.
 
 - Parameter nums: An inout array of integers, sorted in non-decreasing order.
 - Returns: The number of unique elements in the modified array.
 
 - Complexity: O(n) time complexity and O(1) space complexity.
 
 ## Example:
 ```swift
 var nums = [1, 1, 2]
 let count = removeDuplicates(&nums)
 print(count) // Output: 2
 print(nums.prefix(count)) // Output: [1, 2]
 */

func removeDuplicates(_ nums: inout [Int]) -> Int {
    guard nums.count > 1 else { return nums.count }
    
    var countOfUniqueNumbers = 1
    var slowPointerIndex = 0
    
    for fastPointerIndex in 1..<nums.count {
        if nums[fastPointerIndex] != nums[slowPointerIndex] {
            slowPointerIndex += 1
            nums[slowPointerIndex] = nums[fastPointerIndex]
            countOfUniqueNumbers += 1
        }
    }
    
    return countOfUniqueNumbers
}
