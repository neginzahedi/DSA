//
//  PrintInReverse.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-25.
//

import Foundation

/*
 * Complete the 'reversePrint' function below.
 *
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

func reversePrint(llist: SinglyLinkedListNode?) -> Void {
    var current = llist
    var arr = [Int]()
    
    while let node = current {
        arr.append(node.nodeData)
        current = node.next
    }
    for i in 0..<arr.count {
        let node = arr[(arr.count-1)-i]
        print(node)
    }
}
