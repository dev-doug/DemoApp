//
//  Shuffle.swift
//  DemoApp
//
//  Created by Douglas Wall on 12/20/17.
//  Copyright © 2017 DevDoug. All rights reserved.
//

import Foundation

extension Array {
    var randomIndex: Int {
        return  Int(arc4random_uniform(UInt32(count)))
    }

    mutating func naiveShuffle() {
        var temp = [Element]()

        while !isEmpty {
            temp.append(remove(at: randomIndex))
        }

        self = temp
    }

    mutating func improvedShuffle() {
        for i in stride(from: count-1, through: 1, by: -1) {
            let j = randomIndex
            if j != i {
                swapAt(i, j)
            }
        }
    }

    func shuffledArray() -> [Element] {
        var copy = self
        copy.improvedShuffle()
        return copy
    }
}

