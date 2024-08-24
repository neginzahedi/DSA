//
//  CamelCase.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-24.
//

import Foundation

/*
 * Complete the 'camelcase' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts STRING s as parameter.
 */

func camelcase(s: String) -> Int {
    var wordCount = 0
    
    for char in s {
        if char.isUppercase{
            wordCount += 1
        }
    }
    
    return s.isEmpty ? wordCount : wordCount + 1
}
