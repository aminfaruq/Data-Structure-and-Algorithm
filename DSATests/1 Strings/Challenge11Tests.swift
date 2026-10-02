//
//  Challenge11Tests.swift
//  DSATests
//
//  Created by Amin faruq on 01/10/26.
//

import XCTest

final class Challenge11Tests: XCTestCase {
    
    func test_threeDifferentLetter() {
        XCTAssertTrue(makeSUT("Clamp", "Cramp"))
        XCTAssertTrue(makeSUT("Clamp", "Crams"))
        XCTAssertTrue(makeSUT("Clamp", "Grams"))
        XCTAssertFalse(makeSUT("Clamp", "Grans"))
        XCTAssertFalse(makeSUT("Clamp", "Clam"))
        XCTAssertFalse(makeSUT("clamp", "maple"))
    }
    
    private func makeSUT(_ input1: String, _ input2: String) -> Bool {
        guard input1.count == input2.count else { return false }
        var differentCount = 0
        
        for (char1, char2) in zip(input1, input2) {
            if char1 != char2 {
                differentCount += 1
            }
        }
        return differentCount <= 3
    }
}
