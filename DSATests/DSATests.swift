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
    func testLongestCommonPrefix(){
        XCTAssertEqual(longestCommonPrefix(["flower","flow","flight"]), "fl")
        XCTAssertEqual(longestCommonPrefix(["dog","racecar","car"]), "")
    }
    
    // MARK: - Is Valid Tests
    func testIsValid(){
        XCTAssertTrue(isValid("()[]{}"), "()[]{} is valid.")
        XCTAssertTrue(isValid("{[]}"), "{[]} is valid.")
        XCTAssertFalse(isValid("())"), "()) is not valid.")
        XCTAssertFalse(isValid("(]"), "(] is not valid")
        XCTAssertFalse(isValid("([)]"), "([)] is not valid")
        XCTAssertFalse(isValid("("), "( is not valid")
    }
}
