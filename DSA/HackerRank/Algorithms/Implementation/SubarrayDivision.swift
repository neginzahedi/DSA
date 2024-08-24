//
//  SubarrayDivision.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-23.
//

import Foundation

/*
 * Complete the 'birthday' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY s
 *  2. INTEGER d
 *  3. INTEGER m
 */

func birthday(s: [Int], d: Int, m: Int) -> Int {
    var count = 0
    
    for startIndex in 0...s.count-m {
        var currentSum = 0
        
        for index in startIndex..<startIndex+m {
            currentSum += s[index]
        }
        
        if currentSum == d {
            count += 1
        }
    }
    
    return count
}
