//
//  2DArrays.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-24.
//

import Foundation

/*
 * Complete the 'hourglassSum' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts 2D_INTEGER_ARRAY arr as parameter.
 */

func hourglassSum(arr: [[Int]]) -> Int {
    var sums = [Int]()
    
    for i in 0..<4{
        for j in 0..<4 {
            let sum = arr[i][j] + arr[i][j+1] + arr[i][j+2] + arr[i+1][j+1] + arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2]
            sums.append(sum)
        }
    }
    
    return sums.max() ?? 0
}
