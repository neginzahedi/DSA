//
//  RunningTimeAlgorithms.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-26.
//

import Foundation

/*
 * Complete the 'runningTime' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

extension Sorting{
    func runningTime(arr: [Int]) -> Int {
        var arr = arr
        var counter = 0
        
        for i in 1..<arr.count {
            let current = arr[i]
            var j = i - 1
            
            while j >= 0 && current < arr[j]{
                arr[j+1] = arr[j]
                j = j-1
                counter += 1
            }
            
            arr[j + 1] = current
        }
        
        return counter
    }
}
