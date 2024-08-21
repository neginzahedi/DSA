//
//  CompareTriplets.swift
//  DSA
//

import Foundation

/*
 * Complete the 'compareTriplets' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY a
 *  2. INTEGER_ARRAY b
 */

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var score = [0,0]
    
    for i in 0..<a.count {
        if a[i] > b[i] {
            score[0] += 1
        } else if a[i] < b[i]{
            score[1] += 1
        }
    }
    return score
}
