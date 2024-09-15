//
//  RomanToInteger.swift
//  DSA
//

import Foundation

/**
 Given a Roman numeral string `s`, this function converts it to its integer representation.
 
 Roman numerals follow a specific rule where, if a smaller numeral appears before a larger one, the smaller numeral is subtracted.
 For example, IV is 4 because I (1) comes before V (5), meaning it's 5 - 1.
 
 - Parameter s: A Roman numeral string consisting of the characters 'I', 'V', 'X', 'L', 'C', 'D', 'M'.
 
 - Returns: The integer representation of the input Roman numeral string.
 
 - Complexity:
 - Time Complexity: O(n), where n is the length of the input string. The function processes each character of the input string exactly once.
 - Space Complexity: O(1), as the function uses a fixed amount of space regardless of the size of the input string.
 
 ## Example ##
 ```swift
 let result = romanToInt("MCMXCIV")
 // Output: 1994
 ```
 */
class RomanToIntegerSolution {
    func romanToInt(_ s: String) -> Int {
        let symbolValue: [Character:Int] = [
            "I": 1,
            "V":5,
            "X":10,
            "L":50,
            "C":100,
            "D":500,
            "M":1000
        ]
        
        var prev: Character = " "
        var num: Int = 0
        
        for char in s {
            if (char == "V" || char == "X") && prev == "I"{
                num += symbolValue[char]! - 2
            } else if ( char == "L" || char == "C") && prev == "X" {
                num += symbolValue[char]! - 20
            } else if ( char == "D" || char == "M") && prev == "C"{
                num += symbolValue[char]! - 200
            } else {
                num += symbolValue[char]!
            }
            prev = char
        }
        return num
    }
}
