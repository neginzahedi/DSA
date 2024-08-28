//
//  PasswordDecryption.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-26.
//

import Foundation

/*
 * Complete the 'decryptPassword' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts STRING s as parameter.
 */

func decryptPassword(s: String) -> String {
    let arr = Array(s)
    var result = ""
    var digitStack = [Character]()

    var i = 0
    while i < arr.count {
        if arr[i].isUppercase && i + 1 < arr.count && arr[i + 1].isLowercase {
            result.append(arr[i + 1])
            result.append(arr[i].lowercased())
            i += 2
        } else if arr[i] == "*" {
            i += 1
        } else if arr[i] == "0" {
            if let digit = digitStack.popLast() {
                result.append(digit)
            }
            i += 1
        } else if arr[i].isNumber {
            digitStack.append(arr[i])
            i += 1
        } else {
            result.append(arr[i])
            i += 1
        }
    }
    return result
}
