//
//  ListNode.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-30.
//

import Foundation

/**
 A class representing a node in a singly linked list.
 
 - Properties:
 - `val`: The integer value stored in the node.
 - `next`: A reference to the next node in the list, or `nil` if this is the last node.
 
 - Initializers:
 - `init()`: Initializes a node with a default value of 0 and no next node.
 - `init(_ val: Int)`: Initializes a node with a given value and no next node.
 - `init(_ val: Int, _ next: ListNode?)`: Initializes a node with a given value and a reference to the next node.
 */
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}


/**
 Creates a linked list from an array of integers.
 
 - Parameter array: An array of integers to be converted into a linked list.
 
 - Returns: The head of the created linked list, or `nil` if the array is empty.
 
 - Example:
 ```
 let list = createLinkedList([1, 2, 3])
 printLinkedList(list) // Output: 1 -> 2 -> 3 -> nil
 ```
 */
func createLinkedList(_ array: [Int]) -> ListNode? {
    guard !array.isEmpty else { return nil }
    let dummy = ListNode(0)
    var current = dummy
    
    for value in array {
        current.next = ListNode(value)
        current = current.next!
    }
    
    return dummy.next
}
