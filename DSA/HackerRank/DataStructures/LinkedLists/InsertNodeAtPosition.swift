//
//  InsertNodeAtPosition.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-25.
//

import Foundation

/*
 * Complete the 'insertNodeAtPosition' function below.
 *
 * The function is expected to return an INTEGER_SINGLY_LINKED_LIST.
 * The function accepts following parameters:
 *  1. INTEGER_SINGLY_LINKED_LIST llist
 *  2. INTEGER data
 *  3. INTEGER position
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

func insertNodeAtPosition(llist: SinglyLinkedListNode?, data: Int, position: Int) -> SinglyLinkedListNode? {
    
    let newNode = SinglyLinkedListNode(nodeData: data)
    
    if position == 0 {
        newNode.next = llist
        return newNode
    }
    
    var current = llist
    var currentPosition = 0
    
    while current != nil && currentPosition < position - 1 {
        current = current?.next
        currentPosition += 1
    }
    
    newNode.next = current?.next
    current?.next = newNode
    
    return llist
}
