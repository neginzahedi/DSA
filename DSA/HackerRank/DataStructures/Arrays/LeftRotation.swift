//
//  LeftRotation.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-25.
//

import Foundation

/*
 * Complete the 'rotateLeft' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts following parameters:
 *  1. INTEGER d
 *  2. INTEGER_ARRAY arr
 */

func rotateLeft(d: Int, arr: [Int]) -> [Int] {
    let d = d % arr.count
    let leftElements = arr[d..<arr.count]
    let rightElements = arr[0..<d]
    return Array(leftElements + rightElements)
}
