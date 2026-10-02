//
//  Challenge7Tests.swift
//  Data Structure And Algorithms
//
//  Created by Amin faruq on 01/10/26.
//

import XCTest

final class Challenge7Tests: XCTestCase {
    
    func test_condenseWhiteSpace() {
        XCTAssertEqual(makeSUT("a   b   c"), "a b c")
        XCTAssertEqual(makeSUT("    a"), " a")
        XCTAssertEqual(makeSUT("abc"), "abc")
    }
    
    private func makeSUT(_ input: String) -> String {
        var seenSpace = false
        var returnValue = ""
        
        for letter in input {
            if letter == " " {
                if seenSpace { continue }
                seenSpace = true
            } else {
                seenSpace = false
            }
            
            returnValue.append(letter)
        }
        
        return returnValue
    }
}
