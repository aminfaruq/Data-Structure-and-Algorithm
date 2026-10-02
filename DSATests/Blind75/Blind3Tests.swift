//
//  Blind3Tests.swift
//  Data Structure And Algorithms
//
//  Created by Amin faruq on 02/10/26.
//

import XCTest

final class Blind3Tests: XCTestCase {
    
    func test_twoSum_bestSolution() {
        XCTAssertEqual(makeSUT([3,4,5,6], target: 7), [0, 1])
        XCTAssertEqual(makeSUT([4,5,6], target: 10), [0, 2])
        XCTAssertEqual(makeSUT([5,5], target: 10), [0, 1])
    }
    
    func test_twoSum_bruteForce() {
        XCTAssertEqual(makeSUTBruteForce([3,4,5,6], target: 7), [0, 1])
        XCTAssertEqual(makeSUTBruteForce([4,5,6], target: 10), [0, 2])
        XCTAssertEqual(makeSUTBruteForce([5,5], target: 10), [0, 1])
    }
    
    private func makeSUT(_ nums: [Int], target: Int) -> [Int] {
        var dict = [Int : Int]()
        
        for (index, num) in nums.enumerated() {
            let complement = target - num
            
            if let complementIndex = dict[complement] {
                return [complementIndex, index]
            }
            
            dict[num] = index
        }

        return []
    }
    
    
    private func makeSUTBruteForce(_ nums: [Int], target: Int) -> [Int] {
        
        for i in 0..<nums.count {
            for j in (i + 1)..<nums.count {
                if nums[i] + nums[j] == target {
                    return [i, j]
                }
            }
        }
                
        return []
    }
}
