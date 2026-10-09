//
//  Challenge19Tests.swift
//  Data Structure And Algorithms
//
//  Created by Amin faruq on 09/10/26.
//

import XCTest

final class Challenge19Tests: XCTestCase {
    
    func test_swapTwoNumber() {
        let receivedA = 1
        let receivedB = 2
        let (expectedA, expectedB) = makeSUT(a: receivedA, b: receivedB)
        XCTAssertEqual(receivedB, expectedA)
        XCTAssertEqual(receivedA, expectedB)
        

        var mutableReceivedA = 1
        var mutableReceivedB = 2
        makeSUTSwap(a: &mutableReceivedA, b: &mutableReceivedB)
        XCTAssertEqual(mutableReceivedA, 2)
        XCTAssertEqual(mutableReceivedB, 1)
    }
    
    private func makeSUT(a: Int, b: Int) -> (a: Int, b: Int) {
        return (b, a)
    }
    
    // Another
    private func makeSUTSwap( a : inout Int, b: inout Int)  {
        swap(&a, &b)
    }
}
