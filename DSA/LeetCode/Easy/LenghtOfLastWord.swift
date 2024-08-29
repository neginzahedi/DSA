//
//  LenghtOfLastWord.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-29.
//

import Foundation

/// Computes the length of the last word in a given string.
/// A word is defined as a maximal substring consisting of non-space characters only.
///
/// - Parameter s: The input string which may contain words and spaces.
/// - Returns: The length of the last word in the string. If there is no word, it returns 0.
///
/// - Complexity:
///   - Time: O(n), where n is the length of the string `s`. The function iterates through the string once in reverse.
///   - Space: O(1), as it only uses a constant amount of extra space.
func lengthOfLastWord(_ s: String) -> Int {
    
    var lastWordLength = 0
    var inLastWord = false
    
    for character in s.reversed() {
        if character.isWhitespace {
            if inLastWord {
                return lastWordLength
            }
        } else {
            inLastWord = true
            lastWordLength += 1
        }
    }
    
    return lastWordLength
}
