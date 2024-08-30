//
//  ClimbingStairs.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-29.
//

import Foundation


func climbStairs(_ n: Int) -> Int {
    var dic  = [Int:Int]()
    
    if n <= 1 {
        return 1
    }
    
    if dic[n] != nil {
        if let way = dic[n]{
            return way
        }
    }
    
    let ways = climbStairs(n-1) + climbStairs(n-2)
    
    dic[n] = ways
    
    return ways
}
