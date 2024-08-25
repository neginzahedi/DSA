//
//  SparseArrays.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-25.
//

import Foundation

/*
 * Complete the 'matchingStrings' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts following parameters:
 *  1. STRING_ARRAY stringList
 *  2. STRING_ARRAY queries
 */

func matchingStrings(stringList: [String], queries: [String]) -> [Int] {
    var stringCount = [String:Int]()
    
    for string in stringList {
        stringCount[string, default: 0] += 1
    }
    
    var arr = [Int]()
    
    for query in queries {
        arr.append(stringCount[query, default: 0])
    }
    
    return arr
}
