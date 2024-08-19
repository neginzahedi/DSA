//
//  IsPalindrome.swift
//  DSA
//


/**
 Given an integer `x`, return true if `x` is a palindrome, and false otherwise.
 
 - Parameter x: The integer to check for palindrome.
 
 - Returns: A boolean value indicating whether `x` is a palindrome.
 
 - Complexity: O(d), where d is the number of digits in `x`.
 
 ## Example ##
 ```swift
 let result = AlgorithmUtils.isPalindrome(121)
 // Output: true
 ```
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

