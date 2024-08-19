//
//  TwoSum.swift
//  DSA
//


/**
 Given an array of integers `nums` and an integer `target`, return indices of the two numbers such that they add up to `target`.
 
 - Parameters:
 - nums: An array of integers.
 - target: The target integer.
 
 - Returns: An array containing indices of the two numbers that add up to `target`. If no such pair is found, an empty array is returned.
 
 - Complexity: O(n), where n is the number of elements in `nums`.
 
 ## Example ##
 ```swift
 let result = AlgorithmUtils.twoSum([2,7,11,15],9)
 // Output: [0,1]
 ```
 */
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    
    var numberIndices = [Int: Int]()
    
    for (index, num) in nums.enumerated(){
        
        let compleamentaryNumber = target - num
        
        if let complementaryIndex = numberIndices[compleamentaryNumber]{
            return [index, complementaryIndex]
        }
        
        numberIndices[num] = index
    }
    return []
}
