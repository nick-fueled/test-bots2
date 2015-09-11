//
//  test_bots2Tests.swift
//  test-bots2Tests
//
//  Created by Nick McConnell on 9/10/15.
//  Copyright © 2015 Nick McConnell. All rights reserved.
//

import XCTest
@testable import test_bots2

class test_bots2Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testNumberOfSections() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let controller : MasterViewController = MasterViewController()
        let tableview = controller.view as? UITableView
        XCTAssert(controller.numberOfSectionsInTableView(tableview!) == 1)
        let objectCount : Int = controller.objects.count
        XCTAssert(controller.tableView(tableview!, numberOfRowsInSection: 1) == objectCount)
        
    }
    
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measureBlock {
//            // Put the code you want to measure the time of here.
//        }
//    }
    
}
