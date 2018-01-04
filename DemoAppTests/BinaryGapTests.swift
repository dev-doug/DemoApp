//
//  BinaryGapTests.swift
//  DemoAppTests
//
//  Created by Douglas Wall on 1/4/18.
//  Copyright © 2018 DevDoug. All rights reserved.
//

import XCTest
@testable import DemoApp

class BinaryGapTests: XCTestCase {

    func test_largestBinaryGap() {
        XCTAssert(BinaryGap.largestGap(9) == 2)
        XCTAssert(BinaryGap.largestGap(15) == 0)
        XCTAssert(BinaryGap.largestGap(20) == 1)
        XCTAssert(BinaryGap.largestGap(529) == 4)
        XCTAssert(BinaryGap.largestGap(1041) == 5)
        XCTAssert(BinaryGap.largestGap(561892) == 3)
        XCTAssert(BinaryGap.largestGap(74901729) == 4)
        XCTAssert(BinaryGap.largestGap(1376796946) == 5)
    }

}
