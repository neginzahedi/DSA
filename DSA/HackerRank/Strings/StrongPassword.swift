//
//  StrongPassword.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-24.
//

import Foundation

/*
 * Complete the 'minimumNumber' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER n
 *  2. STRING password
 */

func minimumNumber(n: Int, password: String) -> Int {
    
    let specialCharacters = "!@#$%^&*()-+"
    
    var hasDigit = false
    var hasLowercase = false
    var hasUppercase = false
    var hasSpecialCharacter = false
    
    for char in password {
        if char.isUppercase {
            hasUppercase = true
        } else if char.isLowercase {
            hasLowercase = true
        } else if specialCharacters.contains(char)  {
            hasSpecialCharacter = true
        } else if char.isNumber {
            hasDigit = true
        }
    }
    
    var missingCharacters = 0
    if hasUppercase == false {missingCharacters+=1}
    if hasLowercase == false {missingCharacters+=1}
    if hasDigit == false {missingCharacters+=1}
    if hasSpecialCharacter == false {missingCharacters+=1}
    if n + missingCharacters < 6 {missingCharacters = missingCharacters + (6 - (n + missingCharacters))}
    
    return missingCharacters
}
