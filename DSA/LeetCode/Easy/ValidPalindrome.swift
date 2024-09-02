//
//  ValidPalindrome.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-09-02.
//

import Foundation

/**
 This function checks if a given string is a palindrome.
 
 A palindrome is a word, phrase, number, or other sequence of characters that reads the same forward and backward (ignoring spaces, punctuation, and capitalization).
 
 - Parameter s: The input string to check for palindrome properties.
 - Returns: A Boolean value indicating whether the input string is a palindrome (`true`) or not (`false`).
 
 The function first converts the input string to lowercase, removes any non-alphanumeric characters, and then checks if the cleaned string reads the same forward and backward.
 
 ### Time Complexity:
 The time complexity of this function is O(n), where n is the number of characters in the cleaned string. This is because we iterate over the string once to clean it and then another time to check for palindrome properties.
 
 ### Space Complexity:
 The space complexity of this function is O(n), where n is the number of characters in the cleaned string, since we store the cleaned string in an array.
 */
func isPalindrome(_ s: String) -> Bool {
    // Convert the string to lowercase and filter out non-alphanumeric characters
    let filteredString = Array(s.lowercased().filter { $0.isLetter || $0.isNumber })
    
    // Initialize two pointers: one starting from the beginning and one from the end
    var leftPointer = 0
    var rightPointer = filteredString.count - 1
    
    // Compare characters from both ends moving towards the center
    while leftPointer < rightPointer {
        if filteredString[leftPointer] != filteredString[rightPointer] {
            return false
        }
        leftPointer += 1
        rightPointer -= 1
    }
    
    return true
}

