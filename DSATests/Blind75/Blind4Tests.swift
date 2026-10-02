//
//  Blind4Tests.swift
//  Data Structure And Algorithms
//
//  Created by Amin faruq on 02/10/26.
//

import XCTest

final class Blind4Tests: XCTestCase {
    
    func test_validPalindrome() {
        XCTAssertTrue(makeSUT("Was it a car or a cat I saw?"))
        XCTAssertFalse(makeSUT("tab a cat"))
        XCTAssertFalse(makeSUT("0P"))
    }
    
    private func makeSUT(_ input: String) -> Bool {
        let isLetter = input
            .lowercased()
            .filter({ $0.isLetter || $0.isNumber })
        
        return String(isLetter) == String(isLetter.reversed())
    }
}
