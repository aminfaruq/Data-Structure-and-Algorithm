//
//  Blind5Tests.swift
//  Data Structure And Algorithms
//
//  Created by Amin faruq on 02/10/26.
//

import XCTest

private class Solution {
    
    func encode(_ strs: [String]) -> String {
        var result = ""
        
        for input in strs {
            // Append the exact character count, a delimiter, and the word
            result += "\(input.count)#\(input)"
        }
        
        return result
    }
    
    func decode(_ str: String) -> [String] {
        let strArray = Array(str)
        var result = [String]()
        var index = 0
        
        while index < strArray.count {
            var j = index
            
            // Move j until it finds the "#" delimiter
            while strArray[j] != "#" {
                j += 1
            }
            
            // Extract the length of the next word
            // Convert ArraySlice to String, then to Int
            let lengthString = String(strArray[index..<j])
            let length = Int(lengthString)!
            
            // Extract the actual word using the length
            let wordStartIndex = j + 1
            let wordEndIndex = j + 1 + length
            let word = String(strArray[wordStartIndex..<wordEndIndex])
            
            result.append(word)
            
            // Move index to the next encoded word
            index = wordEndIndex
        }
        
        return result
    }
}

final class Blind5Tests: XCTestCase {
    
    
    func test_encoding_fromArrayToString() {
        let sut = makeSUT()
        
        XCTAssertEqual(sut.encode(["Hello", "World"]), "5#Hello5#World")
    }
    
    func test_decoding_fromStringToArray() {
        let sut = makeSUT()
        
        XCTAssertEqual(sut.decode("5#Hello5#World"), ["Hello", "World"])
    }
    
    private func makeSUT() -> Solution {
        return Solution()
    }
}

