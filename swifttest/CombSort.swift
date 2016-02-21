//
//  CombSort.swift
//  SwiftSort
//
//  Created by Mark Orel on 2/8/16.
//  Copyright © 2016 Mark Orel. All rights reserved.
//

import Foundation

class CombSort: Sort, SortProtocol {
    let DELTA: Double = 1.247330950103979
    
    func sort(var arr: [Int]) -> [Int] {
        var jump = arr.count
        var finished = true
        while jump > 1 || finished {
            if jump > 1 {
                jump = Int(Double(jump) / self.DELTA)
            }
            finished = false
            for var i = 0; i + jump < arr.count; i++ {
                if arr[i] > arr[i + jump] {
                    swap(&arr[i], &arr[i + jump])
                    finished = true
                }
            }
            
        }
        return arr
    }
}