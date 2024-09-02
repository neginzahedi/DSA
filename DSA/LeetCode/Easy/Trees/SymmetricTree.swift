//
//  SymmetricTree.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-09-02.
//

import Foundation

/**
 This class provides a method to determine whether a binary tree is symmetric.
 
 A binary tree is considered symmetric if the left subtree is a mirror reflection of the right subtree.
 
 - Example:
 Given the following binary tree:
 
    1
    / \
   2    2
   / \   / \
  3  4  4   3
 
 The tree is symmetric.
 
 - Complexity:
 Time Complexity: O(n) where `n` is the number of nodes in the tree.
 Space Complexity: O(h) where `h` is the height of the tree (due to recursion stack space).
 
 */
class SymmetricTree {
    
    /**
     This method checks whether the given binary tree is symmetric around its center.
     
     - Parameter root: The root node of the binary tree.
     - Returns: A Boolean value indicating whether the tree is symmetric (`true`) or not (`false`).
     */
    func isSymmetric(_ root: TreeNode?) -> Bool {
        guard let root = root else { return true } // empty tree is symmetric
        
        return isEqual(left: root.left, right: root.right)
    }
    
    /**
     A helper method to recursively check if two subtrees are mirror images of each other.
     
     - Parameters:
     - left: The root of the left subtree.
     - right: The root of the right subtree.
     - Returns: A Boolean value indicating whether the two subtrees are mirror images of each other.
     */
    func isEqual(left: TreeNode?, right: TreeNode?)-> Bool{
        
        if left == nil && right == nil {
            return true
        }
        
        guard let left = left, let right = right else { return false }
        
        if left.val == right.val && isEqual(left: left.left, right: right.right) && isEqual(left: left.right, right: right.left) {
            return true
        }
        return false
    }
}
