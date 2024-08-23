//
//  Kangaroo.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-22.
//

import Foundation

/*
 * Complete the 'kangaroo' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts following parameters:
 *  1. INTEGER x1
 *  2. INTEGER v1
 *  3. INTEGER x2
 *  4. INTEGER v2
 */

func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    if (v1 - v2) == 0 || (x2 - x1) == 0 {
        return "NO"
    } else {
        let n = (x2 - x1) / (v1 - v2)
        if n < 0 {
            return "NO"
        } else if (x2 - x1) % (v1 - v2) == 0 {
            return "YES"
        }
    }
    return "NO"
}
