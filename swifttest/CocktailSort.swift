//
//  CocktailSort.swift
//  SwiftSort
//
//  Created by Mark Orel on 2/4/16.
//  Copyright © 2016 Mark Orel. All rights reserved.
//

import Foundation

class CocktailSort: Sort, SortProtocol {
    func sort(input: [Int]) -> [Int] {
        var arr = input
        var done = false
        while !done {
            done = true
            for j in 1..<arr.count{
                if (arr[j - 1] > arr[j]) {
                    swap(&arr[j - 1], &arr[j])
                    done = false
                }
            }
            if done {
             break
            }
            for var j = arr.count - 1; j >= 1; j-- {
                if (arr[j - 1] > arr[j]) {
                    swap(&arr[j - 1], &arr[j])
                    done = false
                }
            }
        }
        return arr
    }
}