//
//  MergeSort.swift
//  SwiftSort
//
//  Created by Mark Orel on 2/5/16.
//  Copyright © 2016 Mark Orel. All rights reserved.
//

import Foundation

class MergeSort: Sort, SortProtocol {
    
    func splitInTheMiddle(var arr: [Int]) -> ([Int], [Int]) {
        let middle = arr.count / 2
        let ret = (Array(arr[0..<middle]), Array(arr[middle..<arr.count]))
        return ret
    }
    
    func sort(let arr: [Int]) -> [Int] {
        if arr.count <= 1 {
            return arr
        }
        var (left, right) = self.splitInTheMiddle(arr)
        left = self.sort(left)
        right = self.sort(right)
        if left.last <= right.first {
            return left + right
        }
        let result = self.merge(left, right: right)
        return result
    }
    
    func merge (var left: [Int], var right: [Int]) -> [Int] {
        var result = [Int]()
        while left.count > 0 && right.count > 0 {
            if left.first <= right.first {
                result.append(left.first!)
                left = Array(left.dropFirst(1))
            } else {
                result.append(right.first!)
                right = Array(right.dropFirst(1))
            }
        }
        if left.count > 0 {
            result += left
        }
        if right.count > 0 {
            result += right
        }
        return result
    }
}

