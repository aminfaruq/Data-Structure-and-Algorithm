//
//  Challenge13Tests.swift
//  DSATests
//
//  Created by Amin faruq on 02/10/26.
//

import XCTest

final class Challenge13Tests: XCTestCase {
    
    func test_runLengthEncoding() {
        XCTAssertEqual(makeSUT("aabbcc"), "a2b2c2")
        XCTAssertEqual(makeSUT("aaabaaabaaa"), "a3b1a3b1a3")
        XCTAssertEqual(makeSUT("aaAAaa"), "a2A2a2")
    }
    
    private func makeSUT(_ input: String) -> String {
        var returnValue = "" // 1
        var currentLetter: Character? // 2
        var letterCount = 0 // 3
       
        for letter in input {
            if letter == currentLetter {
                letterCount += 1
            } else {
                if let current = currentLetter {
                    returnValue += "\(current)\(letterCount)"
                }
                
                currentLetter = letter
                letterCount = 1
            }
        }
        
        if let current = currentLetter {
            returnValue += "\(current)\(letterCount)"
        }
        
        return returnValue
    }
}
