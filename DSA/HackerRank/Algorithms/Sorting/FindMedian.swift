//
//  FindMedian.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-26.
//

import Foundation

/*
 * Complete the 'findMedian' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func findMedian(arr: [Int]) -> Int {
    // Write your code here
    var sortedArr = arr.sorted()
    var median = Int(sortedArr.count / 2)
    
    return sortedArr[median]
}
