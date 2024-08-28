//
//  StringAnagram.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-26.
//

import Foundation

/*
 * Complete the 'stringAnagram' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts following parameters:
 *  1. STRING_ARRAY dictionary
 *  2. STRING_ARRAY query
 */

func stringAnagram(dictionary: [String], query: [String]) -> [Int] {
    var dic = [String: Int]()
    
    for word in dictionary {
        let sorted = String(word.sorted())
        dic[sorted, default: 0] += 1
    }
    
    var arr = [Int]()
    
    for q in query {
        let sorted = String(q.sorted())
        arr.append(dic[sorted, default: 0])
    }
    
    return arr
}
