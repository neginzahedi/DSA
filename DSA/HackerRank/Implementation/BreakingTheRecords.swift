//
//  BreakingTheRecords.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-23.
//

import Foundation

/*
 * Complete the 'breakingRecords' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY scores as parameter.
 */

func breakingRecords(scores: [Int]) -> [Int] {

    guard scores.count > 0 else {return [0,0]}
    
    var lowestScore = scores[0]
    var highestScore = scores[0]

    var lowestBreakCount = 0
    var highestBreakCount = 0
    
    for i in 1..<scores.count {
        let currentScore = scores[i]
        if currentScore < lowestScore {
            lowestScore = currentScore
            lowestBreakCount += 1
        } else if currentScore > highestScore {
            highestScore = currentScore
            highestBreakCount += 1
        }
    }
    
    return [highestBreakCount, lowestBreakCount]
}
