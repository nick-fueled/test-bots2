//
//  test_bots2UITests.swift
//  test-bots2UITests
//
//  Created by Nick McConnell on 9/10/15.
//  Copyright © 2015 Nick McConnell. All rights reserved.
//

import XCTest

class test_bots2UITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        let masterNavigationBar = app.navigationBars["Master"]
        let addButton = masterNavigationBar.buttons["Add"]
        addButton.tap()
        addButton.tap()
        addButton.tap()
        masterNavigationBar.buttons["Edit"].tap()
        
        let tablesQuery = app.tables
        let table = tablesQuery.element
        let cell = table.cells.elementBoundByIndex(2)
        XCTAssertTrue(cell.exists)
        let cellButton = cell.buttons.elementBoundByIndex(0)
        cellButton.tap()
        tablesQuery.buttons["Delete"].tap()
        let count = table.cells.count
        XCTAssertTrue(count == 2)
        
    }
    
}
