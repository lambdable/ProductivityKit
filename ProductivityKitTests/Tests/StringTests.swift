//
//  StringTests.swift
//  ProductivityKitTests
//
//  Created by Zaim Ramlan on 20/11/2018.
//  Copyright © 2018 ZaimRamlan. All rights reserved.
//

@testable import ProductivityKit
import XCTest

class StringTests: XCTestCase {
    
    // MARK: Properties
    
    typealias Data = Seeds.String
    var strings: [String]!
    
    // MARK: Test Lifecycle
    
    override func setUp() {
        strings = Data.unformattedStrings
    }
    
    override func tearDown() {
        strings = []
    }
    
    // MARK: Test Cases
    
    func testTitleized() {
        let formattedStrings = strings.map({ $0.titleized() })
        XCTAssertEqual(formattedStrings, Data.formattedStrings)
    }
}
