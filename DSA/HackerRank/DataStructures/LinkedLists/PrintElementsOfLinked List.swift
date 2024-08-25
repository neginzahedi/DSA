//
//  PrintElementsOfLinked List.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-25.
//

import Foundation


class SinglyLinkedListNode {
    var data: Int
    var next: SinglyLinkedListNode?
    
    init(data: Int) {
        self.data = data
        self.next = nil
    }
}

func printLinkedList(head: SinglyLinkedListNode?) -> Void {
    var currentNode = head
    while let node = currentNode {
        print(node.data)
        currentNode = node.next
    }
}
