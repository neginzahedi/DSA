//
//  timeConversion.swift
//  DSA
//

import Foundation

/*
 * Complete the 'timeConversion' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts STRING s as parameter.
 */

func timeConversion(s: String) -> String {
    
    let period = String(s.suffix(2))
    var time = s.dropLast(2).split(separator: ":")
    
    if var hour = Int(time[0]) {
        if period == "AM" {
            if hour == 12 {
                hour  = 0
            }
        } else {
            if hour != 12 {
                hour += 12
            }
        }
        time[0] = Substring(String(format: "%02d", hour))
    }
    
    return time.joined(separator: ":")
}



