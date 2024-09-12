//
//  TwoSumTests.swift
//  DSATests
//
//  Created by Negin Zahedi on 2024-09-12.
//

import XCTest

final class TwoSumTests: XCTestCase {
    
    var solution: TwoSumSolution!
    
    override func setUpWithError() throws {
        solution = TwoSumSolution()
    }
    
    override func tearDownWithError() throws {
        solution = nil
    }
    
    // Test cases for the optimized solution
    func testTwoSumOptimized() throws {
        XCTAssertEqual(solution.twoSum([2, 7, 11, 15], 9), [1, 0])
        XCTAssertEqual(solution.twoSum([3, 2, 4], 6), [2, 1])
        XCTAssertEqual(solution.twoSum([3, 3], 6), [1, 0])
        XCTAssertEqual(solution.twoSum([1, 5, 3, 4], 9), [3,1])
    }
    
    // Test cases for the brute force solution
    func testTwoSumBruteForce() throws {
        XCTAssertEqual(solution.twoSumBruteForce([2, 7, 11, 15], 9), [0, 1])
        XCTAssertEqual(solution.twoSumBruteForce([3, 2, 4], 6), [1, 2])
        XCTAssertEqual(solution.twoSumBruteForce([3, 3], 6), [0, 1])
        XCTAssertEqual(solution.twoSumBruteForce([1, 5, 3, 4], 9), [1,3])
    }
    
    // Test cases for the two-pointer solution
    func testTwoSumTwoPointer() throws {
        XCTAssertEqual(solution.twoSumTwoPointer([2, 7, 11, 15], 9), [0, 1])
        XCTAssertEqual(solution.twoSumTwoPointer([3, 2, 4], 6), [1, 2])
        XCTAssertEqual(solution.twoSumTwoPointer([3, 3], 6), [0, 1])
        XCTAssertEqual(solution.twoSumTwoPointer([1, 5, 3, 4], 9), [3,1])
    }
}
