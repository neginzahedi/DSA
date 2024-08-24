//
//  DiagonalDifference.swift
//  DSA
//

import Foundation

/*
 * Complete the 'diagonalDifference' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts 2D_INTEGER_ARRAY arr as parameter.
 */

func diagonalDifference(arr: [[Int]]) -> Int {
    
    var leftRightSum = 0
    var rightLeftSum = 0
    var secondaryDiagonalIndex = arr.count - 1
    
    for i in 0 ..< arr.count {
        leftRightSum += arr[i][i]
        rightLeftSum += arr[i][secondaryDiagonalIndex]
        secondaryDiagonalIndex -= 1
    }
    
    return abs(leftRightSum - rightLeftSum)
}
