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
    
    // MARK: - Remove Duplicates from Sorted Array
    func testRemoveDuplicates(){
        // Test Case 1: Array with duplicates
        var nums1 = [1, 1, 2]
        XCTAssertEqual(removeDuplicates(&nums1), 2)
        XCTAssertEqual(Array(nums1.prefix(removeDuplicates(&nums1))), [1,2])
        
        // Test Case 2: Array with no duplicates
        var nums2 = [1, 2, 3]
        XCTAssertEqual(removeDuplicates(&nums2), 3)
        XCTAssertEqual(Array(nums2.prefix(removeDuplicates(&nums2))), [1,2,3])
        
        // Test Case 3: Array with all elements the same
        var nums3 = [1, 1, 1, 1]
        XCTAssertEqual(removeDuplicates(&nums3), 1)
        XCTAssertEqual(Array(nums3.prefix(removeDuplicates(&nums3))), [1])
        
        
        // Test Case 4: Empty array
        var nums4 = [Int]()
        XCTAssertEqual(removeDuplicates(&nums4), 0)
        XCTAssertEqual(Array(nums4.prefix(removeDuplicates(&nums4))), [])
        
        // Test Case 5: Single element array
        var nums5 = [1]
        XCTAssertEqual(removeDuplicates(&nums5), 1)
        XCTAssertEqual(Array(nums5.prefix(removeDuplicates(&nums5))), [1])
    }
    
    // MARK: - Remove Element
    func testRemoveElement() {
        // Test case 1: Multiple occurrences of the element to remove
        var nums1 = [3, 2, 2, 3]
        let val1 = 3
        let result1 = removeElement(&nums1, val1)
        XCTAssertEqual(result1, 2)
        XCTAssertEqual(Array(nums1[0..<result1]), [2, 2])
        
        // Test case 2: No occurrences of the element to remove
        var nums2 = [1, 2, 3, 4, 5]
        let val2 = 6
        let result2 = removeElement(&nums2, val2)
        XCTAssertEqual(result2, 5)
        XCTAssertEqual(Array(nums2[0..<result2]), [1, 2, 3, 4, 5])
        
        // Test case 3: All elements are the element to remove
        var nums3 = [7, 7, 7, 7]
        let val3 = 7
        let result3 = removeElement(&nums3, val3)
        XCTAssertEqual(result3, 0)
        XCTAssertEqual(Array(nums3[0..<result3]), [])
        
        // Test case 4: Empty array
        var nums4: [Int] = []
        let val4 = 1
        let result4 = removeElement(&nums4, val4)
        XCTAssertEqual(result4, 0)
        XCTAssertEqual(Array(nums4[0..<result4]), [])
        
        // Test case 5: One element in the array matching the value to remove
        var nums5 = [9]
        let val5 = 9
        let result5 = removeElement(&nums5, val5)
        XCTAssertEqual(result5, 0)
        XCTAssertEqual(Array(nums5[0..<result5]), [])
        
        // Test case 6: One element in the array not matching the value to remove
        var nums6 = [10]
        let val6 = 9
        let result6 = removeElement(&nums6, val6)
        XCTAssertEqual(result6, 1)
        XCTAssertEqual(Array(nums6[0..<result6]), [10])
    }
    
    // MARK: searchInsert
    func testSearchInsert(){
        let nums1 = [1,3,4,5]
        let target1 = 2
        XCTAssertEqual(searchInsert(nums1, target1), 1)
        
        let nums2 = [1,2,3,4,5]
        let target2 = 4
        XCTAssertEqual(searchInsert(nums2, target2), 3)
        
        let nums3 = [1]
        let target3 = 7
        XCTAssertEqual(searchInsert(nums3, target3), 1)
        
        let nums4 = [Int]()
        let target4 = 10
        XCTAssertEqual(searchInsert(nums4, target4), 0)
    }
    
    // MARK: - lengthOfLastWord
    func testLengthOfLastWord(){
        let string1 = "luffy is still joyboy"
        XCTAssertEqual(lengthOfLastWord(string1), 6)
        
        let string2 = "   fly me   to   the moon  "
        XCTAssertEqual(lengthOfLastWord(string2), 4)
    }
    
    //MARK: - plusOne
    func testPlusOne(){
        let digits1 = [1,2,4]
        XCTAssertEqual(plusOne(digits1), [1,2,5])
        
        let digits2 = [1,2,9]
        XCTAssertEqual(plusOne(digits2), [1,3,0])
        
        let digits3 = [1,9,9]
        XCTAssertEqual(plusOne(digits3), [2,0,0])
        
        let digits4 = [9,9,9]
        XCTAssertEqual(plusOne(digits4), [1,0,0,0])
    }
    
    //MARK: - mySqrt
    func testMySqrt(){
        XCTAssertEqual(mySqrt(0),0)
        XCTAssertEqual(mySqrt(1),1)
        XCTAssertEqual(mySqrt(4),2)
        XCTAssertEqual(mySqrt(8),2)
    }
}
