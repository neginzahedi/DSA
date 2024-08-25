//
//  PrintElementsOfLinked List.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-25.
//

import Foundation

func printLinkedList(head: SinglyLinkedListNode?) -> Void {
    var currentNode = head
    while let node = currentNode {
        print(node.nodeData)
        currentNode = node.next
    }
}
