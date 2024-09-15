//
//  RomanToIntegerTests.swift
//  DSATests
//
//  Created by Negin Zahedi on 2024-09-15.
//

import XCTest

final class RomanToIntegerTests: XCTestCase {
    
    var solution: RomanToIntegerSolution!
    
    override func setUpWithError() throws {
        solution = RomanToIntegerSolution()
    }
    
    override func tearDownWithError() throws {
        solution = nil
    }
    
    // Test converting single Roman numeral symbols
    func testSingleSymbols() {
        XCTAssertEqual(solution.romanToInt("I"), 1)
        XCTAssertEqual(solution.romanToInt("V"), 5)
        XCTAssertEqual(solution.romanToInt("X"), 10)
        XCTAssertEqual(solution.romanToInt("L"), 50)
        XCTAssertEqual(solution.romanToInt("C"), 100)
        XCTAssertEqual(solution.romanToInt("D"), 500)
        XCTAssertEqual(solution.romanToInt("M"), 1000)
    }
    
    // Test converting simple combinations
    func testSimpleCombinations() {
        XCTAssertEqual(solution.romanToInt("II"), 2)
        XCTAssertEqual(solution.romanToInt("III"), 3)
        XCTAssertEqual(solution.romanToInt("VI"), 6)
        XCTAssertEqual(solution.romanToInt("XIII"), 13)
        XCTAssertEqual(solution.romanToInt("XX"), 20)
    }
    
    // Test with subtractive combinations
    func testSubtractiveCombinations() {
        XCTAssertEqual(solution.romanToInt("IV"), 4)
        XCTAssertEqual(solution.romanToInt("IX"), 9)
        XCTAssertEqual(solution.romanToInt("XL"), 40)
        XCTAssertEqual(solution.romanToInt("XC"), 90)
        XCTAssertEqual(solution.romanToInt("CD"), 400)
        XCTAssertEqual(solution.romanToInt("CM"), 900)
    }
    
    // Test more complex Roman numerals
    func testComplexNumerals() {
        XCTAssertEqual(solution.romanToInt("MCMXCIV"), 1994)
        XCTAssertEqual(solution.romanToInt("LVIII"), 58)
        XCTAssertEqual(solution.romanToInt("MMXXIV"), 2024)
    }
    
    // Test edge cases
    func testEdgeCases() {
        XCTAssertEqual(solution.romanToInt(""), 0) // Empty string should return 0
    }
}
