//
//  BigSorting.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-26.
//

import Foundation

/*
 * Complete the 'bigSorting' function below.
 *
 * The function is expected to return a STRING_ARRAY.
 * The function accepts STRING_ARRAY unsorted as parameter.
 */

func bigSorting(unsorted: [String]) -> [String] {
    var sorted = unsorted.sorted {
        if $0.count == $1.count{
            return $0 < $1
        } else {
            return $0.count < $1.count
        }
    }
    return sorted
}
