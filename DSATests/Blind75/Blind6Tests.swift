//
//  Blind6Tests.swift
//  Data Structure And Algorithms
//
//  Created by Amin faruq on 03/10/26.
//

import XCTest

// Tests for "Product of Array Except Self" using prefix (left) and suffix (right) products
final class Blind6Tests: XCTestCase {
    
    func test_ProductsOfArrayExceptSelf() {
        // For each index i, result[i] = product of all nums except nums[i]
        XCTAssertEqual(makeSUT([1,2,4,6]), [48,24,12,8])
        XCTAssertEqual(makeSUT([-1,0,1,2,3]), [0,-6,0,0,0])
    }
    
    /// Computes the product of array except self for each index.
    /// Idea: Build two arrays:
    ///  - leftProduct[i] is the product of all elements to the left of i
    ///  - rightProduct[i] is the product of all elements to the right of i
    /// Then result[i] = leftProduct[i] * rightProduct[i].
    /// This avoids division and works with zeros.
    /// Time: O(n), Space: O(n).
    private func makeSUT(_ nums: [Int]) -> [Int] {
        var result = [Int]()
        // Will hold the final products for each position
        var leftProduct = Array(repeating: 1, count: nums.count)
        // leftProduct[i] = product of all elements strictly before i
        var rightProduct = Array(repeating: 1, count: nums.count)
        // rightProduct[i] = product of all elements strictly after i
        var provisionalMultiplier: Int = 1
        // Running product accumulator
        
        // Build leftProduct: at each i, store product of all elements to the left
        for index in 0..<nums.count {
            // Before including nums[i], record product of everything before i
            leftProduct[index] = provisionalMultiplier
            
            // Then include nums[i] for the next positions to the right
            provisionalMultiplier *= nums[index]
        }
        
        // Reset accumulator to build rightProduct from the end
        provisionalMultiplier = 1
        // Build rightProduct: at each i, store product of all elements to the right
        for index in (0..<nums.count).reversed() {
            // Before including nums[i], record product of everything after i
            rightProduct[index] = provisionalMultiplier

            // Then include nums[i] for the next positions to the left
            provisionalMultiplier *= nums[index]
        }
        
        // Combine left and right products to get the answer for each index
        for (left, right) in zip(leftProduct, rightProduct) {
            // result[i] = product of all elements except nums[i]
            result.append(left * right)
        }
        
        // Return the computed array
        return result
    }
}

