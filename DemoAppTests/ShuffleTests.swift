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

    func test_randomIndex() {
        let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

        for _ in 0..<array.count*5 {
            XCTAssert(array.randomIndex < array.count)
        }
    }

    func test_naiveShuffle() {
        var array1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        var array2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

        array1.naiveShuffle()
        XCTAssert(array1 != array2)
        XCTAssert(array1.count == array2.count)

        array2.naiveShuffle()
        XCTAssert(array1 != array2)
        XCTAssert(array1.count == array2.count)
    }

    func test_improvedShuffle() {
        var array1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        var array2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

        array1.improvedShuffle()
        XCTAssert(array1 != array2)
        XCTAssert(array1.count == array2.count)

        array2.improvedShuffle()
        XCTAssert(array1 != array2)
        XCTAssert(array1.count == array2.count)
    }

    func test_shuffledArray() {
        let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        let shuffledArray = array.shuffledArray()

        XCTAssert(array == [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
        XCTAssert(array.count == shuffledArray.count)
        XCTAssert(shuffledArray != array)

    }

}
