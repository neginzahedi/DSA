//
//  PalindromeNumber.swift
//  DSA
//


/**
 Given an integer `x`, return true if `x` is a palindrome, and false otherwise.
 
 - Parameter x: The integer to check for palindrome.
 
 - Returns: A boolean value indicating whether `x` is a palindrome.
 
 ## Example ##
 ```swift
 let result = isPalindrome(121)
 // Output: true
 ```
 
 ## Solutions ##
 Below are  two solutions to check if the integer is palindrome..
 */
class PalindromeNumberSolution {
    
    /**
     Solution 1: Using two-pointer technique on an array of characters.
     
     - Complexity:
     - Time complexity: O(d), where `d` is the number of digits in the integer. We loop through the digits from both ends and compare them.
     - Space complexity: O(d), because we are creating an array of characters from the string representation of the integer.
     */
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 { return false }
        
        let str = Array(String(x))
        var first = 0
        var last = str.count - 1
        
        while first < last {
            if str[first] != str[last] {
                return false
            }
            first += 1
            last -= 1
        }
        
        return true
    }
    
    /**
     Solution 2: Using Swift's built-in string reversal.
     
     - Complexity:
     - Time complexity: O(d), where `d` is the number of digits in the integer. We convert the integer to a string, reverse it, and then compare.
     - Space complexity: O(d), since we create two strings, one for the original and one for the reversed string.
     */
    func isPalindromeWithStringReversal(_ x: Int) -> Bool {
        if x < 0 { return false }
        
        let str = String(x)
        let reversedStr = String(str.reversed())
        
        return str == reversedStr
    }
}
