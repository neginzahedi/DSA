//
//  HackerRankTests.swift
//  DSATests
//
//  Created by Negin Zahedi on 2024-08-21.
//

import XCTest

final class HackerRankTests: XCTestCase {
    
    // MARK: - compareTriplets
    func testCompareTriplets() {
        // Test Case 1
        let result1 = compareTriplets(a: [17, 28, 30], b: [99, 16, 8])
        XCTAssertEqual(result1, [2, 1], "Expected [2, 1] but got \(result1) for input a: [17, 28, 30], b: [99, 16, 8]")
        
        // Test Case 2
        let result2 = compareTriplets(a: [20, 28, 30], b: [7, 16, 8])
        XCTAssertEqual(result2, [3, 0], "Expected [3, 0] but got \(result2) for input a: [20, 28, 30], b: [7, 16, 8]")
    }
    
    // MARK: - aVeryBigSum
    func testAVeryBigSum() {
        // Test Case
        let result = aVeryBigSum(ar: [1000000001, 1000000002, 1000000003, 1000000004, 1000000005])
        XCTAssertEqual(result, 5000000015, "Expected 5000000015 but got \(result) for input ar: [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]")
    }
    
    // MARK: - diagonalDifference
    func testDiagonalDifference() {
        // Test Case
        let result = diagonalDifference(arr: [[11, 2, 4], [4, 5, 6], [10, 8, -12]])
        XCTAssertEqual(result, 15, "Expected 15 but got \(result) for input arr: [[11, 2, 4], [4, 5, 6], [10, 8, -12]]")
    }
}
