//
//  Challenge2Tests.swift
//  DSATests
//
//  Created by Amin faruq on 01/10/26.
//

import XCTest

final class Challenge2Tests: XCTestCase {
    
    func test_isAStringPalindrome() {
        XCTAssertTrue(makeSUT("rotator"))
        XCTAssertTrue(makeSUT("Rats live on no evil star"))
        XCTAssertFalse(makeSUT("Never odd or even"))
        XCTAssertFalse(makeSUT("Hello, world"))
    }
    
    private func makeSUT(_ input: String) -> Bool {
        return input.lowercased() == String(input.reversed()).lowercased()
    }
}
