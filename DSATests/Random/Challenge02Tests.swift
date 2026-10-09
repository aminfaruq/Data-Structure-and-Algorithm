//
//  Challenge02Tests.swift
//  Data Structure And Algorithms
//
//  Created by Amin faruq on 07/10/26.
//

import XCTest

final class Challenge02Tests: XCTestCase {
    
    func test_isPriceReversalValid() {
        XCTAssertTrue(makeSUT(prices: [1, 2, 3, 2, 1]))
        XCTAssertTrue(makeSUT(prices: [10, 20, 20, 10]))
        XCTAssertFalse(makeSUT(prices: [5, 10, 15]))
    }
    
    func makeSUT(prices: [Int]) -> Bool {
        return prices == prices.reversed()
    }
}
