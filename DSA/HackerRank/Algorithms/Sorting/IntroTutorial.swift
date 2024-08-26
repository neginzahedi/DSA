//
//  IntroTutorial.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-26.
//

import Foundation

/*
 * Complete the 'introTutorial' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER V
 *  2. INTEGER_ARRAY arr
 */

class Sorting {
    func introTutorial(V: Int, arr: [Int]) -> Int {
        for i in 0..<arr.count {
            if arr[i] == V{
                return i
            }
        }
        
        return -1
    }
}
