//
//  miniMaxSum.swift
//  DSA
//

import Foundation

/*
 * Complete the 'miniMaxSum' function below.
 *
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func miniMaxSum(arr: [Int]) -> Void {
    let sortedArr = arr.sorted()
    let minSum = sortedArr.dropLast().reduce(0, +)
    let maxSum = sortedArr.dropFirst().reduce(0, +)
    print("\(minSum) \(maxSum)")
}
