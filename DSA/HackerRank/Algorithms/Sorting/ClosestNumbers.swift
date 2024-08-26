//
//  ClosestNumbers.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-26.
//

import Foundation

extension Sorting {
    func closestNumbers(arr: [Int]) -> [Int] {
        let sortedArr = arr.sorted()
        var minDiff = Int.max
        var result = [Int]()
        
        for i in 0..<sortedArr.count-1 {
            let diff = abs(sortedArr[i+1] - sortedArr[i])
            
            if diff < minDiff {
                minDiff = diff
                result = [sortedArr[i], sortedArr[i+1]]
            } else if diff == minDiff {
                result += [sortedArr[i], sortedArr[i+1]]
            }
        }
        
        return result
    }
}
