//
//  DateTests.swift
//  ProductivityKitTests
//
//  Created by Zaim Ramlan on 23/11/2018.
//  Copyright © 2018 ZaimRamlan. All rights reserved.
//

@testable import ProductivityKit
import XCTest

class DateTests: XCTestCase {

    // MARK: Properties
    
    typealias Data = Seeds.Dates
    var aDate: Date!
    var otherDate: Date!
    
    // MARK: Test Lifecycle
    
    override func setUp() {
        aDate = Data.nowDate
        otherDate = Data.fiveMinutesFromNowDate
    }
    
    override func tearDown() {
        aDate = nil
        otherDate = nil
    }
    
    // MARK: Test Cases
    
    func testDateIsSameDayAsOtherDate() {
        let isSameDay = aDate.isSameDayAs(other: otherDate)
        XCTAssertTrue(isSameDay)
    }
}
