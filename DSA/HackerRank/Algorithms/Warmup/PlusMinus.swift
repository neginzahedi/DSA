//
//  plusMinus.swift
//  DSA
//

import Foundation

/*
 * Complete the 'plusMinus' function below.
 *
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func plusMinus(arr: [Int]) -> Void {
    let n = arr.count
    var positiveCount = 0
    var negativeCount = 0
    var zeroCount = 0
    
    for number in arr {
        if number > 0 {
            positiveCount += 1
        } else if number < 0 {
            negativeCount += 1
        } else {
            zeroCount += 1
        }
    }
    
    print(String(format: "%.6f", Double(positiveCount) / Double(n)))
    print(String(format: "%.6f", Double(negativeCount) / Double(n)))
    print(String(format: "%.6f", Double(zeroCount) / Double(n)))
}
