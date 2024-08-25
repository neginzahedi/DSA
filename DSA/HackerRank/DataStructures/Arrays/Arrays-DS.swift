//
//  Arrays-DS.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-24.
//

import Foundation

/*
 * Complete the 'reverseArray' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY a as parameter.
 */

func reverseArray(a: [Int]) -> [Int] {
    var reverseArr = [Int]()
    for i in 0..<a.count {
        reverseArr.append(a[(a.count-1)-i])
    }
    return reverseArr
}
