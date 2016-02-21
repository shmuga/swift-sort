//
//  tests.swift
//  tests
//
//  Created by Mark Orel on 2/3/16.
//  Copyright © 2016 Mark Orel. All rights reserved.
//

import XCTest


class tests: XCTestCase {
    var arr = [Int]()
    var sorted = [Int]()
    
    override func setUp() {
        super.setUp()
        for _ in 0..<100 {
         arr.append(random() / 1000000)
        }
        sorted = arr.sort()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAll() {
        let sorters: [SortProtocol] = [
            BubbleSort(),
            CocktailSort(),
            GnomeSort(),
            InsertSort(),
            MergeSort(),
            CombSort(),
            QuickSort(),
            
        ]
        for sorter in sorters {
            print("Sorting with \(sorter.getName())")
            let sortedArr = sorter.sort(self.arr)
            XCTAssert(sortedArr.elementsEqual(self.sorted), "Failed on \(sorter.getName()) function")
        }
    }}
