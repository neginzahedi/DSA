//
//  FibonacciNumber.swift
//  DSA
//
//  Created by Negin Zahedi on 2024-08-30.
//

import Foundation

/// A class to compute Fibonacci numbers with memoization to optimize recursive calls.
class FibonacciNumber {
    
    // A dictionary to cache the results of previously computed Fibonacci numbers.
    private var memoizationCache: [Int: Int] = [:]
    
    /// Computes the Fibonacci number for a given index.
    /// - Parameter index: The position in the Fibonacci sequence (starting from 0).
    /// - Returns: The Fibonacci number at the specified index.
    func fib(_ n: Int) -> Int {
        
        // Base cases
        if n == 0 { return 0 }
        if n == 1 { return 1 }
        
        // Check the cache for a previously computed result.
        if let result = memoizationCache[n] {
            return result
        }
        
        // Compute and cache the result for future use.
        let result = fib(n-1) + fib(n-2)
        memoizationCache[n] = result
        
        return result
    }
}
