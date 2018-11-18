//
//  NSMutableAttributedStringTests.swift
//  ProductivityKitTests
//
//  Created by Zaim Ramlan on 18/11/2018.
//  Copyright © 2018 ZaimRamlan. All rights reserved.
//

import XCTest
@testable import ProductivityKit

class NSMutableAttributedStringTests: XCTestCase {
    
    // MARK: Properties
    
    typealias Data = Seeds.MutableAttributedString
    
    // MARK: Test Lifecycle
    
    override func setUp() {
    }
    
    override func tearDown() {
    }
    
    // MARK: Test Cases
    
    func testFormatWithoutIndexSpecifiers() {        
        let formatted = Data.unformattedStrings.withoutIndexSpecifers.format(with: Data.replacementStrings[0], Data.replacementStrings[1], Data.replacementStrings[2])
        XCTAssertEqual(formatted, Data.formattedStrings.withoutIndexSpecifers)
    }
    
    func testFormatWithIndexSpecifiers() {
        let formatted = Data.unformattedStrings.withIndexSpecifers.format(with: Data.replacementStrings[0], Data.replacementStrings[1], Data.replacementStrings[2])
        XCTAssertEqual(formatted, Data.formattedStrings.withIndexSpecifers)
    }
    
    func testFormatWithMixedSpecifiers() {
        let formatted = Data.unformattedStrings.mixedSpecifers.format(with: Data.replacementStrings[0], Data.replacementStrings[1], Data.replacementStrings[2])
        XCTAssertEqual(formatted, Data.formattedStrings.mixedSpecifers)
    }
}
