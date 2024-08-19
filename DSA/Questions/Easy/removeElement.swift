//
//  removeElement.swift
//  DSA
//

/**
 Removes all occurrences of a specified value from the array in place and returns the count of elements that are not equal to the specified value.
 The order of the elements may be changed, and the function modifies the array directly.
 
 - Parameters:
 - nums: An inout array of integers to be modified. The array is iterated through, and all instances of the specified value are removed.
 - val: The integer value to be removed from the array.
 - Returns: The number of elements in the modified array that are not equal to the specified value.
 
 - Complexity: O(n) time complexity and O(1) space complexity.
 
 ## Example:
 ```swift
 var nums = [3, 2, 2, 3]
 let count = removeElement(&nums, 3)
 print(count) // Output: 2
 print(Array(nums[0..<count])) // Output: [2, 2]
 */
func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    
    guard nums.count > 0 else { return 0 }
    
    var countOfNumbers = 0
    var slowPointerIndex = 0
    
    for fastPointerIndex in 0..<nums.count {
        if nums[fastPointerIndex] != val {
            nums[slowPointerIndex] = nums[fastPointerIndex]
            slowPointerIndex += 1
            countOfNumbers += 1
        }
    }
    
    return countOfNumbers
}
