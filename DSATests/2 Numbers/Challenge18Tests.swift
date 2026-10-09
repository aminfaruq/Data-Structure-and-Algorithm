//
//  Challenge18Tests.swift
//  Data Structure And Algorithms
//
//  Created by Amin faruq on 09/10/26.
//

import XCTest

final class Challenge18Tests: XCTestCase {
    
    func test_recreateThePow() {
        XCTAssertEqual(makeSUT(4, 3), 64)
        XCTAssertEqual(makeSUT(2, 8), 256)
    }
    
    private func makeSUT(_ x: Int, _ y: Int) -> Int {
        var result = x
        for _ in 1..<y {
            result *= x
        }
        return result
    }
    
    // Other solution
    /*
     private func makeSUT(_ x: Int, _ y: Int) -> Int {
     guard x > 0, y > 0 else { return 0 }
     if y == 1 { return x }
     
     return x * makeSUT(x, y - 1)
     }
     */
}
