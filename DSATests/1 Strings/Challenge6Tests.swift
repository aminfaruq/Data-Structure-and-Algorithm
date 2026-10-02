//
//  Challenge6Tests.swift
//  Data Structure And Algorithms
//
//  Created by Amin faruq on 01/10/26.
//

import XCTest

final class Challenge6Tests: XCTestCase {
    
    func test_removeDuplicateLettersFromAString() {
        XCTAssertEqual(makeSUT("wombat"), "wombat")
        XCTAssertEqual(makeSUT("hello"), "helo")
        XCTAssertEqual(makeSUT("Mississippi"), "Misp")
    }
    
    private func makeSUT(_ input: String) -> String {
        var characters: [Character] = []
        
        for char in input {
            if !characters.contains(char) {
                characters.append(char)
            }
        }
        
        return String(characters)
    }
}
