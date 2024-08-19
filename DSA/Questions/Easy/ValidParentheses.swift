//
//  ValidParentheses.swift
//  DSA
//

/**
 Given a string `s` containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
 
 An input string is valid if:
 
 - Open brackets must be closed by the same type of brackets.
 - Open brackets must be closed in the correct order.
 - Every close bracket has a corresponding open bracket of the same type.
 
 - Parameter s: A string containing just the characters '(', ')', '{', '}', '[' and ']'.
 
 - Returns: A boolean value indicating whether the input string is valid.
 
 - Complexity: O(n), where n is the length of the input string.
 
 ## Example ##
 ```swift
 let result = isValid("()")
 // Output: true
 
 let result = isValid("()[]{}")
 // Output: true
 
 let result = isValid("(]")
 // Output: false
 */

func isValid(_ s: String) -> Bool {
    
    // Check if the string is empty or has an odd length
    if s.isEmpty || s.count % 2 != 0 {
        return false
    }
    
    var stack = [Character]()
    
    for item in s {
        switch item {
        case "(":
            stack.append(")")
        case "[":
            stack.append("]")
        case "{":
            stack.append("}")
        default:
            // If the stack is empty or the top of the stack does not match the current closing bracket, return false
            if stack.isEmpty || stack.removeLast() != item {
                return false
            }
        }
    }
    
    // If the stack is empty, all brackets were matched correctly
    return stack.isEmpty
}


