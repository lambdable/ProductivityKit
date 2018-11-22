//
//  Date+Utility.swift
//  ProductivityKit
//
//  Created by Zaim Ramlan on 23/11/2018.
//  Copyright © 2018 ZaimRamlan. All rights reserved.
//

import Foundation

public extension Date {
    
    /// Compares this date and another given Date to check if both Dates are on the same day.
    ///
    /// - Parameter date: Another Date to be compared to.
    /// - Returns: Returns a Boolean indicating whether the 2 dates are on the same day.
    func isSameDayAs(other date: Date) -> Bool {
        let calendar = Calendar.init(identifier: .gregorian)
        let otherDate = calendar.dateComponents([.day], from: date)
        let currentDate = calendar.dateComponents([.day], from: self)
        return currentDate.day == otherDate.day
    }
}
