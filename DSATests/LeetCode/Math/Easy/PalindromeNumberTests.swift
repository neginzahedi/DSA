//
//  PalindromeNumberTests.swift
//  DSATests
//
//  Created by Negin Zahedi on 2024-09-12.
//

import XCTest

final class PalindromeNumberTests: XCTestCase {
    
    var solution: PalindromeNumberSolution!
    
    override func setUpWithError() throws {
        solution = PalindromeNumberSolution()
    }
    
    override func tearDownWithError() throws {
        solution = nil
    }
    
    // Test for Solution 1: Two-pointer technique
    func testIsPalindrome_TwoPointerTechnique() {
        XCTAssertTrue(solution.isPalindrome(121), "121 should be a palindrome")
        XCTAssertFalse(solution.isPalindrome(-121), "-121 should not be a palindrome")
        XCTAssertTrue(solution.isPalindrome(0), "0 should be a palindrome")
        XCTAssertFalse(solution.isPalindrome(123), "123 should not be a palindrome")
        XCTAssertTrue(solution.isPalindrome(1221), "1221 should be a palindrome")
        XCTAssertFalse(solution.isPalindrome(10), "10 should not be a palindrome")
    }
    
    // Test for Solution 2: String reversal technique
    func testIsPalindrome_StringReversal() {
        XCTAssertTrue(solution.isPalindromeWithStringReversal(121), "121 should be a palindrome")
        XCTAssertFalse(solution.isPalindromeWithStringReversal(-121), "-121 should not be a palindrome")
        XCTAssertTrue(solution.isPalindromeWithStringReversal(0), "0 should be a palindrome")
        XCTAssertFalse(solution.isPalindromeWithStringReversal(123), "123 should not be a palindrome")
        XCTAssertTrue(solution.isPalindromeWithStringReversal(1221), "1221 should be a palindrome")
        XCTAssertFalse(solution.isPalindromeWithStringReversal(10), "10 should not be a palindrome")
    }
    
}
