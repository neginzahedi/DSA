//
//  IsPalindrome.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-02-14.
//

/*
 Problem: Palindrome Number
 
 Given an integer x, return true if x is a palindrome, and false otherwise.
 
 
 Example 1:
 
 Input: x = 121
 Output: true
 Explanation: 121 reads as 121 from left to right and from right to left.
 Example 2:
 
 Input: x = -121
 Output: false
 Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
 Example 3:
 
 Input: x = 10
 Output: false
 Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
 
 
 Constraints:
 
 -231 <= x <= 231 - 1
 */

func isPalindrome(_ x: Int) -> Bool {
    
    if x < 0 {
        return false
    }
    
    var digitsArray: [Int] = []
    
    let numberString = String(x)
    
    for char in numberString {
        if let digit = Int(String(char)) {
            digitsArray.append(digit)
        }
    }
    for idx in 0..<digitsArray.count/2 {
        if digitsArray[idx] != digitsArray[digitsArray.count - idx - 1] {
            return false
        }
    }
    return true
}
