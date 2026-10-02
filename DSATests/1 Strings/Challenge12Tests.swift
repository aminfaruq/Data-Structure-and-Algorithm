//
//  Challenge12Tests.swift
//  DSATests
//
//  Created by Amin faruq on 01/10/26.
//

import XCTest

final class Challenge12Tests: XCTestCase {
    
    func test_findLongestPrefix() {
        XCTAssertEqual(makeSUT("swift switch swill swim"), "swi")
        XCTAssertEqual(makeSUT("flip flap flop"), "fl")
    }
    
    private func makeSUT(_ input: String) -> String {
        let parts = input.split(separator: " ")
        guard var first = parts.first else { return "" }
        
        for word in parts {
            
            while word.starts(with: first) == false {
                first.removeLast()
            }
        }
        
        return String(first)
    }
}
