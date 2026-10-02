//
//  Challenge8Tests.swift
//  Data Structure And Algorithms
//
//  Created by Amin faruq on 01/10/26.
//

import XCTest

final class Challenge8Tests: XCTestCase {
    
    func test_stringIsRotated() {
        XCTAssertTrue(makeSUT("abcde", "eabcd"))
        XCTAssertTrue(makeSUT("abcde", "cdeab"))
        XCTAssertFalse(makeSUT("abcde", "abced"))
        XCTAssertFalse(makeSUT("abc", "a"))
    }
    
    private func makeSUT(_ input1: String, _ input2: String) -> Bool {
        guard input1.count == input2.count else { return false }
        let concanated = input1 + input1
        
        return concanated.contains(input2)
    }
}
