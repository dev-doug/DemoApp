//
//  ShuffleTests.swift
//  DemoAppTests
//
//  Created by Douglas Wall on 12/20/17.
//  Copyright © 2017 DevDoug. All rights reserved.
//

import XCTest
@testable import DemoApp

class ShuffleTests: XCTestCase {

    func test_improvedShuffle() {
        var array1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        var array2 = array1

        array1.improvedShuffle()
        XCTAssert(array1 != array2)

        array2.improvedShuffle()
        XCTAssert(array1 != array2)
    }

    func test_niaveShuffle() {
        var array1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        var array2 = array1

        array1.niaveShuffle()
        XCTAssert(array1 != array2)

        array2.niaveShuffle()
        XCTAssert(array1 != array2)
    }

}
