//
//  Blind2Tests.swift
//  Data Structure And Algorithms
//
//  Created by Amin faruq on 02/10/26.
//

import XCTest

final class Blind2Tests: XCTestCase {
    
    func test_isValidAnagram() {
        XCTAssertTrue(makeSUT("racecar", "carrace"))
        XCTAssertFalse(makeSUT("jar", "jam"))
        XCTAssertFalse(makeSUT("jar", "jafm"))
    }
    
    private func makeSUT(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        
        var countCharacter: [Character: Int] = [:]
        
        for letter in s {
            countCharacter[letter, default: 0] += 1
        }
        
        for letter in t {
            countCharacter[letter, default: 0] -= 1
        }
        
        for (_ , value) in countCharacter {
            if value != 0 {
                return false
            }
        }
        
        return true
    }
}
