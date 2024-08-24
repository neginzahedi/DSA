//
//  BetweenTwoSets.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-24.
//

import Foundation

/*
 * Complete the 'getTotalX' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY a
 *  2. INTEGER_ARRAY b
 */

func getTotalX(a: [Int], b: [Int]) -> Int {
    guard let lowerBound = a.max() else { return 0 }
    guard let upperBound = b.min() else { return 0 }
    
    guard lowerBound <= upperBound else { return 0 }

    var count = 0
    
    for num in lowerBound...upperBound{
        
        var isMultipleA = true
        var isfactorB = true
        
        for element in a {
            if num % element != 0{
                isMultipleA = false
                break
            }
        }
        
        for element in b {
            if element % num != 0{
                isfactorB = false
                break
            }
        }
        
        if isMultipleA && isfactorB {
            count += 1
        }
    }
    return count
}
