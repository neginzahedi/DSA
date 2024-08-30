//
//  BinaryTreeInorderTraversal.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-30.
//

import Foundation

/**
 * This class provides a solution to the problem of performing an inorder traversal on a binary tree.
 * The traversal visits nodes in the order: left child, current node, and right child.
 */
class BinaryTreeInorderTraversal {
    
    // Array to store the inorder traversal result.
    var arr = [Int]()
    
    /**
     * This function performs an inorder traversal on a binary tree.
     *
     * - Parameter root: The root node of the binary tree.
     * - Returns: An array containing the values of the nodes in inorder sequence.
     */
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        // Check if the current node is nil.
        guard let node = root else { return [] }
        
        // Recursively traverse the left subtree.
        inorderTraversal(node.left)
        
        // Append the value of the current node to the result array.
        arr.append(node.val)
        
        // Recursively traverse the right subtree.
        inorderTraversal(node.right)
        
        // Return the accumulated result array.
        return arr
    }
}
