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
