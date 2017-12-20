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
        XCTAssert(BinarySearch.indexOfRecursive(sortedArray: sortedIntArray, searchValue: 14) == 7)
    }

    func test_indexOfIterative() {
        XCTAssert(BinarySearch.indexOfIterative(sortedArray: sortedIntArray, searchValue: 14) == 7)
    }

}
