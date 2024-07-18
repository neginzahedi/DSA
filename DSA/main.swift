//
//  main.swift
//  DSA
//

// MARK: - Two Sum
let twoSumResult1 = twoSum([2,7,11,15], 9)
print(twoSumResult1)    // [0,1]

let twoSumResult2 = twoSum([3,2,4], 6)
print(twoSumResult1)    // [1,2]

let twoSumResult3 = twoSum([3,3], 6)
print(twoSumResult3)    // [0,1]

// MARK: - Is Palindrome

let isPalindromeResult1 = isPalindrome(1421)
print(isPalindromeResult1)  // false

let isPalindromeResult2 = isPalindrome(1441)
print(isPalindromeResult2)  // true

let isPalindromeResult3 = isPalindrome(131)
print(isPalindromeResult3)  // true

let isPalindromeResult4 = isPalindrome(-131)
print(isPalindromeResult4)  // false


// MARK: - romanToInt
let romanToInt1 = romanToInt("III")
print(romanToInt1)  // 3

let romanToInt2 = romanToInt("IV")
print(romanToInt2)  // 4

let romanToInt3 = romanToInt("LVIII")
print(romanToInt3)  // 58

let romanToInt4 = romanToInt("MCMXCIV")
print(romanToInt4)

// MARK: - Longest Common Prefix
let longestCommonPrefix1 = longestCommonPrefix(["flower","flow","flight"])
print(longestCommonPrefix1) // fl

let longestCommonPrefix2 = longestCommonPrefix(["dog","racecar","car"])
print(longestCommonPrefix2) // empty string
