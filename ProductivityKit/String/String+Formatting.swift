//
//  String+Formatting.swift
//  ProductivityKit
//
//  Created by Zaim Ramlan on 20/11/2018.
//  Copyright © 2018 ZaimRamlan. All rights reserved.
//

import Foundation

public extension String {
    
    /// Format the string into a "Title Case" format.
    ///
    /// - Returns: Returns a string formatted using the "Title Case".
    func titleized() -> String {
        let array       = self.lowercased().split(separator: " ")
        var finalString = ""

        for str in array {
            let firstCharacter = String(str[index(str.startIndex, offsetBy: 0)]).uppercased()
            let remainingText  = str.dropFirst()
            let titleizedText  = "\(firstCharacter)\(remainingText)"

            if array.first != str && array.count > 1 { finalString.append(" ") }
            finalString.append(titleizedText)
        }

        return finalString
    }
}
