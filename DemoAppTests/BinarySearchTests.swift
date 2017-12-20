//
//  BinarySearchTests.swift
//  DemoAppTests
//
//  Created by Douglas Wall on 12/19/17.
//  Copyright © 2017 DevDoug. All rights reserved.
//

import XCTest
@testable import DemoApp

class BinarySearchTests: XCTestCase {

    let sortedIntArray = [1, 3, 4, 7, 8, 9, 10, 14, 16, 17, 18, 20, 25, 27, 33, 34, 35, 40, 42, 43]

    func test_indexOfRecursive() {
        XCTAssert(BinarySearch.indexOfRecursive(sortedArray: sortedIntArray, searchValue: 1) == 0)
        XCTAssert(BinarySearch.indexOfRecursive(sortedArray: sortedIntArray, searchValue: 3) == 1)
        XCTAssert(BinarySearch.indexOfRecursive(sortedArray: sortedIntArray, searchValue: 4) == 2)
        XCTAssert(BinarySearch.indexOfRecursive(sortedArray: sortedIntArray, searchValue: 7) == 3)
        XCTAssert(BinarySearch.indexOfRecursive(sortedArray: sortedIntArray, searchValue: 8) == 4)
        XCTAssert(BinarySearch.indexOfRecursive(sortedArray: sortedIntArray, searchValue: 9) == 5)
        XCTAssert(BinarySearch.indexOfRecursive(sortedArray: sortedIntArray, searchValue: 10) == 6)
        XCTAssert(BinarySearch.indexOfRecursive(sortedArray: sortedIntArray, searchValue: 14) == 7)
        XCTAssert(BinarySearch.indexOfRecursive(sortedArray: sortedIntArray, searchValue: 16) == 8)
        XCTAssert(BinarySearch.indexOfRecursive(sortedArray: sortedIntArray, searchValue: 17) == 9)
        XCTAssert(BinarySearch.indexOfRecursive(sortedArray: sortedIntArray, searchValue: 18) == 10)
        XCTAssert(BinarySearch.indexOfRecursive(sortedArray: sortedIntArray, searchValue: 20) == 11)
        XCTAssert(BinarySearch.indexOfRecursive(sortedArray: sortedIntArray, searchValue: 25) == 12)
        XCTAssert(BinarySearch.indexOfRecursive(sortedArray: sortedIntArray, searchValue: 27) == 13)
        XCTAssert(BinarySearch.indexOfRecursive(sortedArray: sortedIntArray, searchValue: 33) == 14)
        XCTAssert(BinarySearch.indexOfRecursive(sortedArray: sortedIntArray, searchValue: 34) == 15)
        XCTAssert(BinarySearch.indexOfRecursive(sortedArray: sortedIntArray, searchValue: 35) == 16)
        XCTAssert(BinarySearch.indexOfRecursive(sortedArray: sortedIntArray, searchValue: 40) == 17)
        XCTAssert(BinarySearch.indexOfRecursive(sortedArray: sortedIntArray, searchValue: 42) == 18)
        XCTAssert(BinarySearch.indexOfRecursive(sortedArray: sortedIntArray, searchValue: 43) == 19)
        XCTAssert(BinarySearch.indexOfRecursive(sortedArray: sortedIntArray, searchValue: 5) == nil)
        XCTAssert(BinarySearch.indexOfRecursive(sortedArray: [], searchValue: 1) == nil)
    }

    func test_indexOfIterative() {
        XCTAssert(BinarySearch.indexOfIterative(sortedArray: sortedIntArray, searchValue: 1) == 0)
        XCTAssert(BinarySearch.indexOfIterative(sortedArray: sortedIntArray, searchValue: 3) == 1)
        XCTAssert(BinarySearch.indexOfIterative(sortedArray: sortedIntArray, searchValue: 4) == 2)
        XCTAssert(BinarySearch.indexOfIterative(sortedArray: sortedIntArray, searchValue: 7) == 3)
        XCTAssert(BinarySearch.indexOfIterative(sortedArray: sortedIntArray, searchValue: 8) == 4)
        XCTAssert(BinarySearch.indexOfIterative(sortedArray: sortedIntArray, searchValue: 9) == 5)
        XCTAssert(BinarySearch.indexOfIterative(sortedArray: sortedIntArray, searchValue: 10) == 6)
        XCTAssert(BinarySearch.indexOfIterative(sortedArray: sortedIntArray, searchValue: 14) == 7)
        XCTAssert(BinarySearch.indexOfIterative(sortedArray: sortedIntArray, searchValue: 16) == 8)
        XCTAssert(BinarySearch.indexOfIterative(sortedArray: sortedIntArray, searchValue: 17) == 9)
        XCTAssert(BinarySearch.indexOfIterative(sortedArray: sortedIntArray, searchValue: 18) == 10)
        XCTAssert(BinarySearch.indexOfIterative(sortedArray: sortedIntArray, searchValue: 20) == 11)
        XCTAssert(BinarySearch.indexOfIterative(sortedArray: sortedIntArray, searchValue: 25) == 12)
        XCTAssert(BinarySearch.indexOfIterative(sortedArray: sortedIntArray, searchValue: 27) == 13)
        XCTAssert(BinarySearch.indexOfIterative(sortedArray: sortedIntArray, searchValue: 33) == 14)
        XCTAssert(BinarySearch.indexOfIterative(sortedArray: sortedIntArray, searchValue: 34) == 15)
        XCTAssert(BinarySearch.indexOfIterative(sortedArray: sortedIntArray, searchValue: 35) == 16)
        XCTAssert(BinarySearch.indexOfIterative(sortedArray: sortedIntArray, searchValue: 40) == 17)
        XCTAssert(BinarySearch.indexOfIterative(sortedArray: sortedIntArray, searchValue: 42) == 18)
        XCTAssert(BinarySearch.indexOfIterative(sortedArray: sortedIntArray, searchValue: 43) == 19)
        XCTAssert(BinarySearch.indexOfIterative(sortedArray: sortedIntArray, searchValue: 5) == nil)
        XCTAssert(BinarySearch.indexOfIterative(sortedArray: [], searchValue: 5) == nil)
    }

}
