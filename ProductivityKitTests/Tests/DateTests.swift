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

    func testDateIsBetween2Dates() {
        let startDate = aDate.addingTimeInterval(-100)
        let endDate = aDate.addingTimeInterval(100)
        let isBetweenDates = aDate.isBetween(start: startDate, end: endDate)
        XCTAssertTrue(isBetweenDates)
    }

    func testDateIsNotBetween2Dates() {
        let startDate = aDate.addingTimeInterval(-200)
        let endDate = aDate.addingTimeInterval(-100)
        let isBetweenDates = aDate.isBetween(start: startDate, end: endDate)
        XCTAssertFalse(isBetweenDates)
    }
}
