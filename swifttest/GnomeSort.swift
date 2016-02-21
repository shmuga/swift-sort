//
//  GnomeSort.swift
//  SwiftSort
//
//  Created by Mark Orel on 2/4/16.
//  Copyright © 2016 Mark Orel. All rights reserved.
//

import Foundation

class GnomeSort: Sort, SortProtocol {
    func sort(input: [Int]) -> [Int] {
        var arr = input
        var i = 1, j = 2
        while (i < arr.count) {
            if (arr[i - 1] > arr[i]) {
                swap(&arr[i - 1], &arr[i])
                i -= 1
                if (i != 0) {
                    continue;
                }
            }
            i = j++
        }
        return arr
    }
}