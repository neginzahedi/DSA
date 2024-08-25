//
//  SinglyLinkedListNode.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-25.
//

import Foundation

class SinglyLinkedListNode {
    var nodeData: Int
    var next: SinglyLinkedListNode?
    
    init(nodeData: Int) {
        self.nodeData = nodeData
        self.next = nil
    }
}
