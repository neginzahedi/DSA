//
//  CountingSort.swift
//  DSA
//

import Foundation

/*
 * Complete the 'countingSort' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func countingSort(arr: [Int]) -> [Int] {
    let minValue = 0
    let maxValue = 99
    
    var countingArr = Array(repeating: 0, count: maxValue-minValue+1)
    
    for i in 0..<arr.count {
        let index = arr[i] - minValue
        countingArr[index] += 1
    }
    return countingArr
}
