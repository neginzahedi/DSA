//
//  DSATests.swift
//  DSATests
//

import XCTest

final class DSATests: XCTestCase {
    
    // MARK: - Two Sum Tests
    func testTwoSum() {
        XCTAssertEqual(twoSum([2, 7, 11, 15], 9), [1, 0], "Test Case 1 Failed")
        XCTAssertEqual(twoSum([3, 2, 4], 6), [2, 1], "Test Case 2 Failed")
        XCTAssertEqual(twoSum([3, 3], 6), [1, 0], "Test Case 3 Failed")
    }
    
    // MARK: - Is Palindrome Tests
    func testIsPalindrome() {
        XCTAssertFalse(isPalindrome(1421), "1421 is not a palindrome")
        XCTAssertTrue(isPalindrome(1441), "1441 is a palindrome")
        XCTAssertTrue(isPalindrome(131), "131 is a palindrome")
        XCTAssertFalse(isPalindrome(-131), "-131 is not a palindrome")
    }
    
    // MARK: - Roman to Int Tests
    func testRomanToInt() {
        XCTAssertEqual(romanToInt("III"), 3)
        XCTAssertEqual(romanToInt("IV"), 4)
        XCTAssertEqual(romanToInt("LVIII"), 58)
        XCTAssertEqual(romanToInt("MCMXCIV"), 1994)
    }
    
    // MARK: - Longest Common Prefix Tests
    func testLongestCommonPrefix() {
        XCTAssertEqual(longestCommonPrefix(["flower","flow","flight"]), "fl")
        XCTAssertEqual(longestCommonPrefix(["dog","racecar","car"]), "")
    }
    
    // MARK: - Is Valid Tests
    func testIsValid() {
        XCTAssertTrue(isValid("()[]{}"), "()[]{} is valid.")
        XCTAssertTrue(isValid("{[]}"), "{[]} is valid.")
        XCTAssertFalse(isValid("())"), "()) is not valid.")
        XCTAssertFalse(isValid("(]"), "(] is not valid")
        XCTAssertFalse(isValid("([)]"), "([)] is not valid")
        XCTAssertFalse(isValid("("), "( is not valid")
    }
    
    // MARK: - Merge Two Lists Tests
    func testMergeTwoLists() {
        
        // Test 1: Merging [1,2,4] and [1,3,4]
        let list1 = createLinkedList([1, 2, 4])
        let list2 = createLinkedList([1, 3, 4])
        let mergedList = mergeTwoLists(list1, list2)
        let expectedList = createLinkedList([1, 1, 2, 3, 4, 4])
        XCTAssertTrue(areListsEqual(mergedList, expectedList), "Failed: merging [1,2,4] and [1,3,4]")
        
        // Test 2: Merging empty list and [0]
        let emptyList: ListNode? = nil
        let listWithZero = createLinkedList([0])
        let mergedList2 = mergeTwoLists(emptyList, listWithZero)
        let expectedList2 = createLinkedList([0])
        XCTAssertTrue(areListsEqual(mergedList2, expectedList2), "Failed: merging empty list and [0]")
        
        // Test 3: Merging two empty lists
        let mergedList3 = mergeTwoLists(nil, nil)
        XCTAssertTrue(areListsEqual(mergedList3, nil), "Failed: merging two empty lists")
        
    }
    
    // Helper function to compare two linked lists
    private func areListsEqual(_ l1: ListNode?, _ l2: ListNode?) -> Bool {
        var l1 = l1
        var l2 = l2
        while l1 != nil && l2 != nil {
            if l1!.val != l2!.val {
                return false
            }
            l1 = l1?.next
            l2 = l2?.next
        }
        return l1 == nil && l2 == nil
    }
}
