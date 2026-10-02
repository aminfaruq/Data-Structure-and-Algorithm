//
//  Challenge9Tests.swift
//  Data Structure And Algorithms
//
//  Created by Amin faruq on 01/10/26.
//

import XCTest

final class Challenge9Tests: XCTestCase {
    
    func test_findPangrams() {
        XCTAssertTrue(makeSUT("The quick brown fox jumps over the lazy dog"))
        XCTAssertFalse(makeSUT("The quick brown fox jumped over the lazy dog"))
    }
    
    private func makeSUT(_ input: String) -> Bool {
        let set = Set(input.lowercased())
        let letters = set.filter({ $0 >= "a" && $0 <= "z"})
        return letters.count == 26
    }
}
