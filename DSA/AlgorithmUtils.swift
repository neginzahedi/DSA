//
//  AlgorithmUtils.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-02-17.
//

import Foundation

class AlgorithmUtils {
    
    /**
     Given an array of integers `nums` and an integer `target`, return indices of the two numbers such that they add up to `target`.
     
     - Parameters:
     - nums: An array of integers.
     - target: The target integer.
     
     - Returns: An array containing indices of the two numbers that add up to `target`. If no such pair is found, an empty array is returned.
     
     - Complexity: O(n), where n is the number of elements in `nums`.
     
     ## Example ##
     ```swift
     let result = AlgorithmUtils.twoSum([2,7,11,15],9)
     // Output: [0,1]
     ```
     */
    
    static func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var numberIndices = [Int: Int]()
        
        for (index, num) in nums.enumerated(){
            
            let compleamentaryNumber = target - num
            
            if let complementaryIndex = numberIndices[compleamentaryNumber]{
                return [index, complementaryIndex]
            }
            
            numberIndices[num] = index
        }
        return []
    }
    
    
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
    static func isPalindrome(_ x: Int) -> Bool {
        
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
}
