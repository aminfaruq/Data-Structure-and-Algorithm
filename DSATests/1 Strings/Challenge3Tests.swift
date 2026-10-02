//
//  Challenge3Tests.swift
//  Data Structure And Algorithms
//
//  Created by Amin faruq on 01/10/26.
//

import XCTest

final class Challenge3Tests: XCTestCase {
    
    func test_doTwoStringsContainTheSameCharacters() {
        XCTAssertTrue(makeSUT("abca", "abca"))
        XCTAssertTrue(makeSUT("abc", "cba"))
        XCTAssertTrue(makeSUT("a1 b2", "b1 a2"))
        XCTAssertFalse(makeSUT("abc", "abca"))
        XCTAssertFalse(makeSUT("abc", "Abc"))
        XCTAssertFalse(makeSUT("abc", "cbAa"))
        XCTAssertFalse(makeSUT("abcc", "abca"))
    }
        
    private func makeSUT(_ input1: String, _ input2: String) -> Bool {
        if input1.count != input2.count { return false }
        
        var countCharacter: [Character: Int] = [:]
        
        for character in input1 {
            countCharacter[character, default: 0] += 1
        }
        
        for character in input2 {
            countCharacter[character, default: 0] -= 1
        }
        
        for count in countCharacter.values {
            if count != 0 { return false }
        }
        
        return true
    }
    
}
