//
//  PlusOne.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-29.
//

import Foundation

/// Adds one to the number represented by the input array of digits.
///
/// This function takes an array of integers, where each integer represents a digit of a number.
/// It increments the number by one and returns the resulting array of digits. If the addition
/// results in a carry over that requires extending the array (e.g., from 999 to 1000),
/// the function adjusts the array size accordingly.
///
/// - Parameter digits: An array of integers representing a number, with each element being a digit.
/// - Returns: An array of integers representing the number after adding one.
///
/// - Complexity: O(n) where n is the number of digits in the input array.
func plusOne(_ digits: [Int]) -> [Int] {
    var digits = digits
    var index = digits.count - 1
    
    while index >= 0 {
        if digits[index] != 9 {
            digits[index] += 1
            return digits
        }
        digits[index] = 0
        index -= 1
    }
    
    digits.insert(1, at: 0)
    return digits
}

