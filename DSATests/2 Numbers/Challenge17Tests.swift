//
//  Challenge17Tests.swift
//  Data Structure And Algorithms
//
//  Created by Amin faruq on 09/10/26.
//

import XCTest

final class Challenge17Tests: XCTestCase {
    
    func test_generateRandomNumberInARange() {
        
        XCTAssertTrue(makeSUT(min: 1, max: 5) <= 5)
        XCTAssertTrue(makeSUT(min: 8, max: 10) <= 10)
        XCTAssertTrue(makeSUT(min: 12, max: 12) == 12)
        XCTAssertFalse(makeSUT(min: 12, max: 18) == 7)
    }
    
    private func makeSUT(min: Int, max: Int) -> Int {
        /*
        let random = (min...max)
        return random.randomElement() ?? 0
        */
        return Int.random(in: min...max)
    }
}
