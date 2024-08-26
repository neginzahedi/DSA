//
//  CountingSortOne.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-26.
//

import Foundation

/*
 * Complete the 'countingSort' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

extension Sorting {
    func countingSort(arr: [Int]) -> [Int] {
        var countingSortArr = Array(repeating: 0, count: 100)
        
        for num in arr {
            countingSortArr[num] += 1
        }
        
        return countingSortArr
    }
}
