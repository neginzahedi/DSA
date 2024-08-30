//
//  SameTree.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-30.
//

import Foundation

class SameTree {
    /**
     * This function checks whether two binary trees are identical.
     *
     * - Parameters:
     *   - p: The root node of the first binary tree.
     *   - q: The root node of the second binary tree.
     * - Returns: A Boolean value indicating whether the two trees are identical.
     *
     * - Complexity:
     *   - Time Complexity: O(n), where n is the number of nodes in the smaller tree.
     *     The function visits each node exactly once.
     *   - Space Complexity: O(h), where h is the height of the tree, due to the recursion stack.
     *     In the worst case, the space complexity is O(n) for a completely unbalanced tree.
     */
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        // If both nodes are nil, they are identical (base case).
        if p == nil && q == nil { return true }
        
        // If one node is nil and the other is not, they are not identical.
        if p == nil || q == nil { return false }
        
        // If the values of the current nodes are the same, proceed to check the subtrees.
        if p?.val == q?.val {
            return isSameTree(p?.left, q?.left) && isSameTree(p?.right, q?.right)
        }
        
        // If the values are different, the trees are not identical.
        return false
    }
}
