//
//  MergeTwoSortedLists.swift
//  DSA
//


/**
 Merges two sorted linked lists into a single sorted linked list.
 
 - Parameters:
 - `list1`: The head of the first sorted linked list.
 - `list2`: The head of the second sorted linked list.
 
 - Returns: The head of the merged sorted linked list.
 
 - Complexity: O(n + m), where `n` and `m` are the lengths of the two lists.
 
 - Example:
 ```
 let list1 = createLinkedList([1, 2, 4])
 let list2 = createLinkedList([1, 3, 4])
 let mergedList = mergeTwoLists(list1, list2)
 Output: 1 -> 1 -> 2 -> 3 -> 4 -> 4 -> nil
 ```
 */
func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    
    let head = ListNode()
    var current = head
    
    var l1 = list1
    var l2 = list2
    
    while l1 != nil && l2 != nil {
        if l1!.val <= l2!.val {
            current.next = l1
            l1 = l1?.next
        } else{
            current.next = l2
            l2 = l2?.next
        }
        
        current = current.next!
    }
    
    if l1 != nil {
        current.next = l1
    } else {
        current.next = l2
    }
    
    return head.next
}


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
