//
//  Challenge16Tests.swift
//  Data Structure And Algorithms
//
//  Created by Amin faruq on 02/10/26.
//

import XCTest

final class Challenge16Tests: XCTestCase {
    
    func test_fizzBuzz() {
        XCTAssertEqual(makeSUT(1), "1")
        XCTAssertEqual(makeSUT(2), "2")
        XCTAssertEqual(makeSUT(3), "Fizz")
        XCTAssertEqual(makeSUT(4), "4")
        XCTAssertEqual(makeSUT(5), "Buzz")
        XCTAssertEqual(makeSUT(15), "Fizz Buzz")
    }
    
    private func makeSUT(_ number: Int) -> String {
        let modOf3 = (number % 3 == 0)
        let modOf5 = (number % 5 == 0)
        
        return if (modOf3 && modOf5) {
            "Fizz Buzz"
        } else if modOf3 {
            "Fizz"
        } else if modOf5 {
            "Buzz"
        }  else {
            String(number)
        }
    }
}
