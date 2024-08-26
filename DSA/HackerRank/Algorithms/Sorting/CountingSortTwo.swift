//
//  CountingSortTwo.swift
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

extension Sorting{
    func countingSortTwo(arr: [Int]) -> [Int] {
        let max = arr.max() ?? 0
        var countingArr = Array(repeating: 0, count: Int(max + 1))
        
        for num in arr {
            countingArr[num] += 1
        }
        
        var sortedArr = [Int]()
        
        for i in 0..<countingArr.count{
            for _ in 0..<countingArr[i]{
                sortedArr.append(i)
            }
        }
        return sortedArr
    }
}
