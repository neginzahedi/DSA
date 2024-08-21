//
//  BirthdayCakeCandles.swift
//  DSA
//

import Foundation

func birthdayCakeCandles(candles: [Int]) -> Int {
    
    let sortedArr = candles.sorted()
    
    var num = 1
    var i = sortedArr.count - 1
    
    while i > 0 {
        if sortedArr[i - 1] == sortedArr[i]{
            num += 1
            i -= 1
        } else {
            break
        }
    }
    
    return num
}
