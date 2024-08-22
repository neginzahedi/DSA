//
//  Staircase.swift
//  DSA
//

import Foundation

/*
 * Complete the 'staircase' function below.
 *
 * The function accepts INTEGER n as parameter.
 */

func staircase(n: Int) -> Void {
    for i in 1...n {
        let spaces = String(repeating: " ", count: n-i)
        let hashes = String(repeating: "#", count: i)
        print(spaces + hashes)
    }
}
