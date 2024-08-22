//
//  LonelyInteger.swift
//  DSA
//

import Foundation


func lonelyinteger(a: [Int]) -> Int {
    
    let sortedArr = a.sorted()
    var i = 0
    
    for _ in 0 ..< (sortedArr.count - 1) / 2 {
        if sortedArr[i] == sortedArr[i+1]{
            i += 2
            print(i)
        } else {
            return sortedArr[i]
        }
    }
    
    return sortedArr[i]
}
