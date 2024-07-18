//
//  RomanToInt.swift
//  DSA
//


/**
 Given a Roman numeral string `s`, converts it to an integer.
 
 - Parameter s: A Roman numeral string.
 
 - Returns: The integer representation of the input Roman numeral string.
 
 - Complexity: O(n), where n is the length of the input string.
 
 ## Example ##
 ```swift
 let result = AlgorithmUtils.romanToInt("MCMXCIV")
 // Output: 1994
 ```
 */
func romanToInt(_ s: String) -> Int {
    let symbolValue: [String:Int] = [
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
    
    for c in s {
        if (c == "V" || c == "X") && prev == "I"{
            num += symbolValue[String(c)]! - 2
        } else if ( c == "L" || c == "C") && prev == "X" {
            num += symbolValue[String(c)]! - 20
        } else if ( c == "D" || c == "M") && prev == "C"{
            num += symbolValue[String(c)]! - 200
        } else {
            num += symbolValue[String(c)]!
        }
        prev = c
    }
    return num
}

