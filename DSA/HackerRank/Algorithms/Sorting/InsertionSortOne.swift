//
//  InsertionSortOne.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-26.
//

import Foundation

/*
 * Complete the 'insertionSort1' function below.
 *
 * The function accepts following parameters:
 *  1. INTEGER n
 *  2. INTEGER_ARRAY arr
 */

func insertionSort1(n: Int, arr: [Int]) -> Void {
    var arr = arr
    let last = arr[n-1]
    var i = n - 2
    
    while i >= 0 && arr[i] > last {
        arr[i+1] = arr[i]
        print(arr.map{String($0)}.joined(separator: " "))
        i -= 1
    }
    
    arr[i + 1] = last
    print(arr.map{String($0)}.joined(separator: " "))
}
