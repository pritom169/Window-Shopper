//
//  Window_ShoperTests.swift
//  Window ShoperTests
//
//  Created by Pritom  Mazumder on 2/7/18.
//  Copyright © 2018 Pritom  Mazumder. All rights reserved.
//

import XCTest

class Window_ShoperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testGetHours(){
        XCTAssert(Wage.getHours(forwage: 25, andPrice: 100) == 4)
        XCTAssert(Wage.getHours(forwage: 25, andPrice: 3001) == 121)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
