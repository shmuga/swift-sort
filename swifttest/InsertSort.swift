//
//  GnomeSort.swift
//  SwiftSort
//
//  Created by Mark Orel on 2/4/16.
//  Copyright © 2016 Mark Orel. All rights reserved.
//

import Foundation

class InsertSort: Sort, SortProtocol {
    func sort(input: [Int]) -> [Int] {
        var arr = input
        var i = 0
        for j in 1..<arr.count {
            let key = arr[j]
            i = j - 1
            while i >= 0 && arr[i] > key {
                arr[i+1] = arr[i]
                i = i - 1
            }
            arr[i + 1] = key
        }
        return arr
    }
}