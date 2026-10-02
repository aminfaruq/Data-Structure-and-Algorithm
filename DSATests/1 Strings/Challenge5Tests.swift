//
//  Challenge5Tests.swift
//  Data Structure And Algorithms
//
//  Created by Amin faruq on 01/10/26.
//

import XCTest

final class Challenge5Tests: XCTestCase {
    
    func test_countTheCharacter() {
        XCTAssertEqual(makeSUT("The rain in Spain", find: "a"), 2)
        XCTAssertEqual(makeSUT("Mississippi", find: "i"), 4)
        XCTAssertEqual(makeSUT("Mississippi", find: "a"), 0)
        XCTAssertEqual(makeSUT("Hacking with Swift", find: "i"), 3)
    }
    
    private func makeSUT(_ input: String, find character: Character) -> Int {
        var countCharacter: [Character: Int] = [:]
        
        for char in input {
            countCharacter[char, default: 0] += 1
        }
        
        if let count = countCharacter[character] {
            return count
        }
        
        return 0
    }
}
