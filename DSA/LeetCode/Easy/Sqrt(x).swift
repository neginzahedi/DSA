//
//  Sqrt(x).swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-29.
//

import Foundation

/// Computes the integer square root of a given non-negative integer `x`.
/// - Parameter x: A non-negative integer whose square root is to be computed.
/// - Returns: The integer part of the square root of `x`.
///
/// This function uses a binary search approach to efficiently find the square root.
/// The time complexity is O(log x), where x is the input value.
/// The space complexity is O(1) since we use a constant amount of extra space.
func mySqrt(_ x: Int) -> Int {
    
    // If x is less than 2, the square root is the number itself.
    if x < 2 { return x }
    
    // Initialize the binary search range.
    var left = 0
    var right = x / 2
    
    // Perform binary search to find the integer square root.
    while left <= right {
        let mid = left + (right - left) / 2
        
        // Calculate mid squared to compare with x.
        let midSquared = mid * mid
        
        // If mid squared is equal to x, return mid as the square root.
        if midSquared == x {
            return mid
        }
        // If mid squared is greater than x, narrow the search to the left half.
        else if midSquared > x {
            right = mid - 1
        }
        // If mid squared is less than x, narrow the search to the right half.
        else {
            left = mid + 1
        }
    }
    
    // If the exact square root is not found, return the closest integer less than the square root.
    return right
}

