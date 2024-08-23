//
//  DivisibleSumPairs.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-23.
//

import Foundation

/*
 * Complete the 'divisibleSumPairs' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER n
 *  2. INTEGER k
 *  3. INTEGER_ARRAY ar
 */

func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
    var pairs: Int = 0
    
    for i in 0..<n{
        for j in i + 1..<n{
            if ((ar[i] + ar[j]) % k) == 0 {
                pairs += 1
            }
        }
    }
    
    return pairs
}
