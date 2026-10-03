//
//  Challenge10Tests.swift
//  DSATests
//
//  Created by Amin faruq on 01/10/26.
//

import XCTest

final class Challenge10Tests: XCTestCase {
    
    func test_vowelsAndConsonants() {
        XCTAssertEqual(makeSUT("Swift Coding Challenges"), "6 vowels and 15 consonants")
        XCTAssertEqual(makeSUT("Mississippi"), "4 vowels and 7 consonants")
    }
    
    private func makeSUT(_ input: String) -> String {
        var consonantCount = 0
        var vowelCount = 0
        
        let vowels = "aiueo"
        for letter in input.lowercased() {
            if vowels.contains(letter) {
                vowelCount += 1
            }
        }
        
        let letters = input.lowercased().filter({ $0.isLetter })
        consonantCount = letters.count - vowelCount
        
        return "\(vowelCount) vowels and \(consonantCount) consonants"
    }
}
