//
//  bubble.swift
//  SwiftSort
//
//  Created by Mark Orel on 2/3/16.
//  Copyright © 2016 Mark Orel. All rights reserved.
//

import Foundation

class BubbleSort: Sort, SortProtocol {
    func sort(input: [Int]) -> [Int] {
        var arr = input
        var done = false
        while !done {
            done = true
            for j in 1..<arr.count{
                if (arr[j - 1] > arr[j]) {
                    let temp = arr[j]
                    arr[j] = arr[j - 1]
                    arr[j - 1] = temp
                    done = false
                }
            }
        }
        return arr
    }
}