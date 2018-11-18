//
//  UIColorTests.swift
//  ProductivityKitTests
//
//  Created by Zaim Ramlan on 17/11/2018.
//  Copyright © 2018 ZaimRamlan. All rights reserved.
//

import XCTest
@testable import ProductivityKit

class UIColorTests: XCTestCase {

    // MARK: Properties
    
    typealias Data = Seeds.Color
    
    // MARK: Test Lifecycle
    
    override func setUp() {
    }
    
    override func tearDown() {
    }
    
    // MARK: Test Cases
    
    func testHexColour() {
        let customColor = Data.customColor
        let testedColor = UIColor.rgba(customColor.red, customColor.green, customColor.blue, customColor.alpha)
        
        XCTAssertEqual(testedColor, customColor.color)
    }
}
