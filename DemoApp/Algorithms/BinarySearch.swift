//
//  BinarySearch.swift
//  DemoApp
//
//  Created by Douglas Wall on 12/20/17.
//  Copyright © 2017 DevDoug. All rights reserved.
//

import Foundation

struct BinarySearch {

    static func indexOfRecursive<T: Comparable>(sortedArray: [T], searchValue: T, range: Range<Int>? = nil) -> Int? {
        let range = range ?? 0..<sortedArray.count

        guard range.lowerBound < range.upperBound else { return nil }

        let midIndex = range.lowerBound + ((range.upperBound - range.lowerBound) / 2)
        let midValue = sortedArray[midIndex]

        if midValue < searchValue {
            return indexOfRecursive(sortedArray: sortedArray, searchValue: searchValue, range: midIndex+1..<range.upperBound)
        } else if midValue > searchValue {
            return indexOfRecursive(sortedArray: sortedArray, searchValue: searchValue, range: range.lowerBound..<midIndex)
        } else {
            return midIndex
        }
    }

    static func indexOfIterative<T: Comparable>(sortedArray: [T], searchValue: T) -> Int? {
        var lowerBound = 0
        var upperBound = sortedArray.count

        while lowerBound < upperBound {
            let midIndex = lowerBound + ((upperBound - lowerBound) / 2)
            let midValue = sortedArray[midIndex]

            if midValue < searchValue {
                lowerBound = midIndex + 1
            } else if midValue > searchValue {
                upperBound = midIndex
            } else {
                return midIndex
            }
        }

        return nil
    }

}
