//
//  BinaryGap.swift
//  DemoApp
//
//  Created by Douglas Wall on 1/4/18.
//  Copyright © 2018 DevDoug. All rights reserved.
//

import Foundation

struct BinaryGap {

    static func largestGap(_ n: Int) -> Int {
        let binaryString = String(n, radix: 2)

        var longestGap = 0
        var currentGap = 0

        for i in binaryString {
            print(i)
            if i == "1" {
                if currentGap > longestGap {
                    longestGap = currentGap
                }
                currentGap = 0
            } else {
                currentGap += 1
            }
        }

        return longestGap
    }

}
