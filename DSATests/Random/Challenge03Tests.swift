//
//  Challenge03Tests.swift
//  Data Structure And Algorithms
//
//  Created by Amin faruq on 07/10/26.
//

import XCTest

final class Challenge03Tests: XCTestCase {
    
    func test_mergeTransactions() {
        XCTAssertEqual(makeSUT(walletA: [1, 3, 5], walletB: [2, 4, 6]), [1, 2, 3, 4, 5, 6])
        XCTAssertEqual(makeSUT(walletA: [1, 5, 9], walletB: [2, 3]), [1, 2, 3, 5, 9])
        XCTAssertEqual(makeSUT(walletA: [], walletB: [4, 7]), [4, 7])
    }
    
    func makeSUT(walletA: [Int], walletB: [Int]) -> [Int] {
        var result = [Int]()
        var indexA = 0
        var indexB = 0
        
        while (indexA < walletA.count && indexB < walletB.count) {
            if walletA[indexA] < walletB[indexB] {
                result.append(walletA[indexA])
                indexA += 1
            } else if walletB[indexB] < walletA[indexA] {
                result.append(walletB[indexB])
                indexB += 1
            }
        }
        
        while indexA < walletA.count {
            result.append(walletA[indexA])
            indexA += 1
        }
        
        while indexB < walletB.count {
            result.append(walletB[indexB])
            indexB += 1
        }
        
        return result
    }
}
