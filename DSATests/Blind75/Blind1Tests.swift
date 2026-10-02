//
//  Blind1Tests.swift
//  Data Structure And Algorithms
//
//  Created by Amin faruq on 02/10/26.
//

import XCTest

final class Blind1Tests: XCTestCase {
    
    func test_containsDuplicate() {
        XCTAssertTrue(makeSUT([1,2,3,3]))
        XCTAssertFalse(makeSUT([1,2,3,4]))
    }
    
    private func makeSUT(_ nums: [Int]) -> Bool {
        return nums.count != Set(nums).count
    }
}
