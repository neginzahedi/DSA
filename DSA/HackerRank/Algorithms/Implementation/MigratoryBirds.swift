//
//  MigratoryBirds.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-23.
//

import Foundation

/*
 * Complete the 'migratoryBirds' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func migratoryBirds(arr: [Int]) -> Int {
    
    var birdCounts = [Int:Int]()
    
    var birdID = arr[0]
    var maxCount = 0
    
    for birdID in arr {
        birdCounts[birdID, default: 0] += 1
    }
    
    for (bird, count) in birdCounts {
        if count > maxCount || (count == maxCount && bird < birdID) {
            birdID = bird
            maxCount = count
        }
    }
    
    return birdID
}
