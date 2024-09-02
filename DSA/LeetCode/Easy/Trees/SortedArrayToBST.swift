//
//  SortedArrayToBST.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-09-02.
//

import Foundation

/**
 Converts a sorted array into a height-balanced Binary Search Tree (BST).
 
 This function recursively selects the middle element of the array to ensure
 the tree is height-balanced, where the left and right subtrees of every node
 differ in height by no more than one.
 
 - Parameters:
 - nums: A sorted array of integers.
 
 - Returns:
 - The root node of the resulting height-balanced BST, or `nil` if the array is empty.
 
 - Complexity:
 - Time complexity: O(n log n), where n is the number of elements in the array.
    The reason is that at each recursive step, we create subarrays using the Array slicing,
    which takes O(n) time, and this process is repeated log n times.
 - Space complexity: O(log n) due to the recursion stack.
 */
func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
    
    // Base case: return nil if the array is empty
    guard nums.count > 0 else { return nil }
    
    // Calculate the middle index to balance the tree
    let left = 0
    let right = nums.count - 1
    let mid = left + (right - left)/2
    
    // Create a new node with the middle element
    var newNode = TreeNode(nums[mid])
    
    // Recursively build the left subtree using the left subarray
    newNode.left = sortedArrayToBST(Array(nums[0..<mid]))
    
    // Recursively build the right subtree using the right subarray
    newNode.right = sortedArrayToBST(Array(nums[mid+1..<nums.count]))
    
    return newNode
}
