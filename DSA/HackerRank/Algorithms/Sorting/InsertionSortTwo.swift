//
//  InsertionSortTwo.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-26.
//

import Foundation

/*
 * Complete the 'insertionSort2' function below.
 *
 * The function accepts following parameters:
 *  1. INTEGER n
 *  2. INTEGER_ARRAY arr
 */

func insertionSort2(n: Int, arr: [Int]) -> Void {
    // Write your code here
    var arr = arr
    
    for i in 1..<arr.count {
        var current = arr[i]
        var j = i - 1
        
        while j >= 0 && current < arr[j]{
            arr[j+1] = arr[j]
            j = j-1
        }
        
        arr[j + 1] = current
        print(arr.map{String($0)}.joined(separator: " "))
    }
}
