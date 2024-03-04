//
//  main.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-02-14.
//

// 1. Two Sum
let twoSumResult1 = AlgorithmUtils.twoSum([2,7,11,15], 9)
print(twoSumResult1)    // [0,1]

let twoSumResult2 = AlgorithmUtils.twoSum([3,2,4], 6)
print(twoSumResult1)    // [1,2]

let twoSumResult3 = AlgorithmUtils.twoSum([3,3], 6)
print(twoSumResult3)    // [0,1]

// 2. Is Palindrome

let isPalindromeResult1 = AlgorithmUtils.isPalindrome(1421)
print(isPalindromeResult1)  // false

let isPalindromeResult2 = AlgorithmUtils.isPalindrome(1441)
print(isPalindromeResult2)  // true

let isPalindromeResult3 = AlgorithmUtils.isPalindrome(131)
print(isPalindromeResult3)  // true

let isPalindromeResult4 = AlgorithmUtils.isPalindrome(-131)
print(isPalindromeResult4)  // false


// 3. romanToInt
let romanToInt1 = AlgorithmUtils.romanToInt("III")
print(romanToInt1)  // 3

let romanToInt2 = AlgorithmUtils.romanToInt("IV")
print(romanToInt2)  // 4

let romanToInt3 = AlgorithmUtils.romanToInt("LVIII")
print(romanToInt3)  // 58

let romanToInt4 = AlgorithmUtils.romanToInt("MCMXCIV")
print(romanToInt4)
