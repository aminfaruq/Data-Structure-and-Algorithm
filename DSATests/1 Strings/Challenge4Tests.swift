//
//  Challenge4Tests.swift
//  DSATests
//
//  Created by Amin faruq on 01/10/26.
//

import XCTest

final class Challenge4Tests: XCTestCase {
    
    func test_doesOneStringContainAnother() {
        let subject = "Hello, world"
        
        XCTAssertTrue(subject.fuzzyContains("Hello"))
        XCTAssertTrue(subject.fuzzyContains("WORLD"))
        XCTAssertFalse(subject.fuzzyContains("Goodbye"))
    }
}

extension String {
    func fuzzyContains(_ string: String) -> Bool {
        return self.lowercased().range(of: string.lowercased()) != nil
    }
}
