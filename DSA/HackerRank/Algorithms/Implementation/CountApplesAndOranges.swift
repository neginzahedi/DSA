//
//  CountApplesAndOranges.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-22.
//

import Foundation

/*
 * Complete the 'countApplesAndOranges' function below.
 *
 * The function accepts following parameters:
 *  1. INTEGER s
 *  2. INTEGER t
 *  3. INTEGER a
 *  4. INTEGER b
 *  5. INTEGER_ARRAY apples
 *  6. INTEGER_ARRAY oranges
 */

func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    
    var appleCount = 0
    var orangeCount = 0
    
    for d in apples {
        let distance = d + a
        if (distance >= s) && (distance <= t){
            appleCount += 1
        }
    }
    
    for d in oranges {
        let distance = d + b
        if (distance >= s) && (distance <= t){
            orangeCount += 1
        }
    }
    
    print(appleCount)
    print(orangeCount)
}

