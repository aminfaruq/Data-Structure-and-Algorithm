//
//  Challenge1Tests.swift
//  Data Structure And Algorithms
//
//  Created by Amin faruq on 01/10/26.
//

import XCTest

final class Challenge1Tests: XCTestCase {
    
    func test_areTheLetterUnique() {
        XCTAssertTrue(makeSUT("No duplicates"), "Challenge 1 failed")
        XCTAssertTrue(makeSUT("abcdefghijklmnopqrstuvwxyz"), "Challenge 1 failed")
        XCTAssertTrue(makeSUT("AaBbCc"), "Challenge 1 failed")
        XCTAssertFalse(makeSUT("Hello, world"), "Challenge 1 failed")
    }
    
    private func makeSUT(_ input: String) -> Bool {
        return Set(input).count == input.count
    }
}
