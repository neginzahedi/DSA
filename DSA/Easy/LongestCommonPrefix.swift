//
//  LongestCommonPrefix.swift
//  DSA
//


/**
 Given an array of strings `strs`, return longest common prefix string.
 
 - Parameter strs: An array of strings to find the longest common prefix from.
 
 - Returns: A string representing the longest common prefix. If no common prefix is found, returns an empty string.
 
 - Complexity: O(n * m), where n is the number of strings and m is the length of the shortest string.
 
 ## Example ##
 ```swift
 let result = Solution().longestCommonPrefix(["flower","flow","flight"])
 // Output: "fl"
 ```
 */
func longestCommonPrefix(_ strs: [String]) -> String {
    
    guard let firstStr = strs.first else { return "" }
    
    var prefix = firstStr
    
    for str in strs {
        while !str.hasPrefix(prefix){
            prefix = String(prefix.dropLast())
            if prefix.isEmpty { return "" }
        }
    }
    return prefix
}
