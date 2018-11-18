//
//  Seeds.swift
//  ProductivityKitTests
//
//  Created by Zaim Ramlan on 17/11/2018.
//  Copyright © 2018 ZaimRamlan. All rights reserved.
//

import UIKit

struct Seeds {
    
    // MARK: - NSMutableAttributedString
    
    struct MutableAttributedString {
        static var replacementStrings = [
            NSAttributedString(string: "Light", attributes: [.font: font(weight: .light)]),
            NSAttributedString(string: "Regular", attributes: [.font: font(weight: .regular)]),
            NSAttributedString(string: "Bold", attributes: [.font: font(weight: .bold)])
        ]
        
        static var unformattedStrings: (texts: [NSMutableAttributedString], withoutIndexSpecifers: NSMutableAttributedString, withIndexSpecifers: NSMutableAttributedString, mixedSpecifers: NSMutableAttributedString) {
            return (
                [
                    NSMutableAttributedString(string: "Lorem ipsum "),
                    NSMutableAttributedString(string: " dolor "),
                    NSMutableAttributedString(string: " sit "),
                    NSMutableAttributedString(string: " amet.")
                ],
                NSMutableAttributedString(string: "Lorem ipsum %@ dolor %@ sit %@ amet."),
                NSMutableAttributedString(string: "Lorem ipsum %2$@ dolor %3$@ sit %1$@ amet."),
                NSMutableAttributedString(string: "Lorem ipsum %@ dolor %1$@ sit %@ amet.")
            )
        }
        
        static var formattedStrings: (withoutIndexSpecifers: NSMutableAttributedString, withIndexSpecifers: NSMutableAttributedString, mixedSpecifers: NSMutableAttributedString) {
            let withoutIndexSpecifers =
                unformattedStrings.texts[0]
                .append(attrString: replacementStrings[0]).append(attrString: unformattedStrings.texts[1])
                .append(attrString: replacementStrings[1]).append(attrString: unformattedStrings.texts[2])
                .append(attrString: replacementStrings[2]).append(attrString: unformattedStrings.texts[3])
            
            let withIndexSpecifers =
                unformattedStrings.texts[0]
                    .append(attrString: replacementStrings[1]).append(attrString: unformattedStrings.texts[1])
                    .append(attrString: replacementStrings[2]).append(attrString: unformattedStrings.texts[2])
                    .append(attrString: replacementStrings[0]).append(attrString: unformattedStrings.texts[3])
            
            let mixedSpecifers =
                unformattedStrings.texts[0]
                    .append(attrString: replacementStrings[0]).append(attrString: unformattedStrings.texts[1])
                    .append(attrString: replacementStrings[0]).append(attrString: unformattedStrings.texts[2])
                    .append(attrString: replacementStrings[1]).append(attrString: unformattedStrings.texts[3])

            return (withoutIndexSpecifers, withIndexSpecifers, mixedSpecifers)
        }
        
        private static func font(weight: UIFont.Weight) -> UIFont {
            return UIFont.systemFont(ofSize: UIFont.systemFontSize, weight: weight)
        }
    }
    
    // MARK: - UIColor
    
    struct Color {
        static var customColor: (color: UIColor, red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) {
            let red   = CGFloat(255)
            let green = CGFloat(255)
            let blue  = CGFloat(255)
            let alpha = CGFloat(1)
            let color = UIColor(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
            return (color, red, green, blue, alpha)
        }
    }
    
    // MARK: - UIView
    
    struct View {
        static var locations: [NSNumber] = [0, 1]
        static var colours = [UIColor.black, UIColor.white]
        static var opacity = Float(0.5)
        static var offset = CGSize.zero
        static var radius = CGFloat(8)
        static var width = CGFloat(1)
        static func path(in rect: CGRect) -> CGPath {
            return UIBezierPath(roundedRect: rect, cornerRadius: radius).cgPath
        }
    }
}
