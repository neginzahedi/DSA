//
//  ReverseLinkedList.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-25.
//

import Foundation

/*
 * Complete the 'reverse' function below.
 *
 * The function is expected to return an INTEGER_SINGLY_LINKED_LIST.
 * The function accepts INTEGER_SINGLY_LINKED_LIST llist as parameter.
 */

/*
 * For your reference:
 *
 * SinglyLinkedListNode {
 *     data: Int
 *     next: SinglyLinkedListNode?
 * }
 *
 */

func reverse(llist: SinglyLinkedListNode?) -> SinglyLinkedListNode? {
    var prev: SinglyLinkedListNode?
    var current = llist
    var next: SinglyLinkedListNode?
    
    while current != nil {
        next = current?.next
        current?.next = prev
        prev = current
        current = next
    }
    return prev
}
