//
//  QuickSort.swift
//  SwiftSort
//
//  Created by Mark Orel on 2/8/16.
//  Copyright © 2016 Mark Orel. All rights reserved.
//

import Foundation

class QuickSort: Sort, SortProtocol {
    func quicksort(inout arr: [Int], left: Int, right: Int) {
        if left < right {
            let p = self.partition(&arr, left: left, right: right)
            self.quicksort(&arr, left: left, right: p)
            self.quicksort(&arr, left: p + 1, right: right)
        }
    }
    
    func partition(inout arr: [Int], left: Int, right: Int) -> Int {
        let pivot = arr[(right + left) / 2]
        var i = left - 1
        var j = right + 1

        while true {
            repeat {
                i++
            } while arr[i] < pivot
            
            repeat{
                j--
            } while arr[j] > pivot
            
            if i >= j {
                return j
            }
            swap(&arr[i], &arr[j])
        }
    }
    
    func sort(var arr: [Int]) -> [Int] {
        self.quicksort(&arr, left: 0, right: arr.count - 1)
        return arr
    }
}