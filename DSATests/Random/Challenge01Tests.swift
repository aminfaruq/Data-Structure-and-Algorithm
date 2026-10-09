//
//  Challenge01.swift
//  Data Structure And Algorithms
//
//  Created by Amin faruq on 07/10/26.
//

import XCTest

final class Challenge01: XCTestCase {
    
    func test_hasValidPairs() {
        XCTAssertTrue(makeSUT(transactions: [100, -50, 50, -100]))
        XCTAssertFalse(makeSUT(transactions: [100, -50, 30, -100]))
        XCTAssertFalse(makeSUT(transactions: [200, -200, 300]))
        XCTAssertFalse(makeSUT(transactions: [100, 100, -100]))
    }
    
    private func makeSUT(transactions: [Int]) -> Bool {
        guard !transactions.isEmpty else { return false }
        
        var counts: [Int: Int] = [:]
        
        for num in transactions {
            counts[num, default: 0] += 1
        }
        
        for (num, count) in counts {
            
            if num > 0 {
                let matchingNegative = -num
                
                if counts[matchingNegative] != count {
                    return false
                }
            } else if num < 0 {
                let matchingPositive = -num
                
                if counts[matchingPositive] != count {
                    return false
                }
            } else {
                if count % 2 != 0 {
                    return false
                }
            }
        }
        return true
    }
}
