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
    
    // MARK: - birthdayCakeCandles
    func testBirthdayCakeCandles(){
        // Test Case
        let result = birthdayCakeCandles(candles: [3,2,1,3])
        XCTAssertEqual(result, 2, "Expected 2 but got \(result) for input arr: [3,2,1,3]")
    }
    
    // MARK: - timeConversion
    func testTimeConversion() {
        // Test Case 1: Convert 12:00:00AM to 00:00:00
        let time1 = "12:00:00AM"
        let expectedOutput1 = "00:00:00"
        XCTAssertEqual(timeConversion(s: time1), expectedOutput1)

        // Test Case 2: Convert 01:05:45AM to 01:05:45
        let time2 = "01:05:45AM"
        let expectedOutput2 = "01:05:45"
        XCTAssertEqual(timeConversion(s: time2), expectedOutput2)

        // Test Case 3: Convert 12:00:00PM to 12:00:00
        let time3 = "12:00:00PM"
        let expectedOutput3 = "12:00:00"
        XCTAssertEqual(timeConversion(s: time3), expectedOutput3)

        // Test Case 4: Convert 07:05:45PM to 19:05:45
        let time4 = "07:05:45PM"
        let expectedOutput4 = "19:05:45"
        XCTAssertEqual(timeConversion(s: time4), expectedOutput4)

        // Test Case 5: Convert 11:59:59AM to 11:59:59
        let time5 = "11:59:59AM"
        let expectedOutput5 = "11:59:59"
        XCTAssertEqual(timeConversion(s: time5), expectedOutput5)

        // Test Case 6: Convert 11:59:59PM to 23:59:59
        let time6 = "11:59:59PM"
        let expectedOutput6 = "23:59:59"
        XCTAssertEqual(timeConversion(s: time6), expectedOutput6)
    }
    
    // MARK: - gradingStudents
    func testGradingStudents(){
        let input = [86, 30, 0, 16, 51, 53, 42, 48, 22, 69, 12, 27, 34, 24, 95, 16, 32, 22, 52]
        let expectedOutput = [86, 30, 0, 16, 51, 55, 42, 50, 22, 70, 12, 27, 34, 24, 95, 16, 32, 22, 52]
        XCTAssertEqual(gradingStudents(grades: input), expectedOutput)
    }
    
    // MARK: - Kangaroo
    func testKangaroo(){
        XCTAssertEqual(kangaroo(x1: 0, v1: 3, x2: 4, v2: 2), "YES")
        XCTAssertEqual(kangaroo(x1: 0, v1: 3, x2: 5, v2: 3), "NO")
    }
}
