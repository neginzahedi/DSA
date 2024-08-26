//
//  BillDivision.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-26.
//

import Foundation

/*
 * Complete the 'bonAppetit' function below.
 *
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY bill
 *  2. INTEGER k
 *  3. INTEGER b
 */

func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {
    var totalBill = 0
    
    for b in bill {
        totalBill += b
    }
    
    let annBill = (totalBill - bill[k]) / 2
    
    if annBill == b {
        print("Bon Appetit")
    } else {
        print(b - annBill)
    }
}
