//
//  SimpleArraySum.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-24.
//

import Foundation

/*
 * Complete the 'simpleArraySum' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY ar as parameter.
 */

func simpleArraySum(ar: [Int]) -> Int {
    var sum = 0
    for i in 0..<ar.count {
        sum += ar[i]
    }
    return sum
}
