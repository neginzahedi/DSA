//
//  SuperReducedString.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-24.
//

import Foundation

/*
 * Complete the 'superReducedString' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts STRING s as parameter.
 */

func superReducedString(s: String) -> String {
    var arr = Array(s)
    var i = 0
    
    while i < arr.count - 1 {
        if arr[i] == arr[i+1]{
            arr.remove(at: i)
            arr.remove(at: i)
            
            if i > 0 {
                i -= 1
            }
        } else {
            i += 1
        }
    }
    return String(arr).isEmpty ? "Empty String" : String(arr)
}
