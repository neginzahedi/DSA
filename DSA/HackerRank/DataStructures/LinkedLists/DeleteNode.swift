//
//  DeleteNode.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-25.
//

import Foundation

/*
 * Complete the 'deleteNode' function below.
 *
 * The function is expected to return an INTEGER_SINGLY_LINKED_LIST.
 * The function accepts following parameters:
 *  1. INTEGER_SINGLY_LINKED_LIST llist
 *  2. INTEGER position
 */

func deleteNode(llist: SinglyLinkedListNode?, position: Int) -> SinglyLinkedListNode? {
    
    if position == 0 {
        return llist?.next
    }
    
    var current = llist
    var currentPosition = 0
    
    while current != nil && currentPosition < position - 1 {
        current = current?.next
        currentPosition += 1
    }
    
    current?.next = current?.next?.next
    
    return llist
}
