//
//  RemoveDuplicatesSortedList.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-30.
//

import Foundation

/// Removes duplicates from a sorted linked list, leaving only distinct numbers.
/// - Parameter head: The head of the sorted linked list.
/// - Returns: The head of the linked list with duplicates removed.
///
/// - Complexity:
///   - Time: O(n), where n is the number of nodes in the linked list.
///   - Space: O(1), only constant space is used.
func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    
    guard let head = head else { return nil }
    
    var current = head
    
    while let nextNode = current.next {
        if current.val == current.next?.val {
            current.next = current.next?.next
        } else {
            current = nextNode
        }
    }
    
    return head
}

