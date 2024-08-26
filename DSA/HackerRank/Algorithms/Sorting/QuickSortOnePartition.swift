//
//  QuickSortOnePartition.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-26.
//

import Foundation

/*
 * Complete the 'quickSort' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

extension Sorting{
    func quickSort(arr: [Int]) -> [Int] {
        var arr = arr
        let pivot = arr[0]
        
        let left = arr.filter{$0 < pivot}
        let equal = arr.filter{$0 == pivot}
        let right = arr.filter{$0 > pivot}
        
        arr = left + equal + right
        
        return arr
    }
}
