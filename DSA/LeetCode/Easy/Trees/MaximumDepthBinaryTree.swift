//
//  MaximumDepthBinaryTree.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-09-02.
//

import Foundation

/**
 This function calculates the maximum depth of a binary tree.

 The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

 - Parameter root: The root node of the binary tree.
 - Returns: An integer representing the maximum depth of the tree.
 
 ### Example:
 Given the binary tree:
 
     3
    / \
   9  20
     /  \
    15   7
 
 The maximum depth is 3.
 
 ### Time Complexity:
 The time complexity of this function is O(n), where `n` is the number of nodes in the tree. This is because the function visits each node exactly once.
 
 ### Space Complexity:
 The space complexity is O(h), where `h` is the height of the tree. This is due to the recursion stack, which can grow up to the height of the tree in the worst case.
 */
func maxDepth(_ root: TreeNode?) -> Int {
    // If the current node is nil, the depth is 0
    guard let root = root else { return 0 }
    
    // Recursively calculate the depth of the left and right subtrees
    let left = maxDepth(root.left)
    let right = maxDepth(root.right)
    
    // The maximum depth is the greater of the two depths plus one for the current node
    return max(left,right) + 1
}

