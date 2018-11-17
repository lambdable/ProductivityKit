//
//  Seeds.swift
//  ProductivityKitTests
//
//  Created by Zaim Ramlan on 17/11/2018.
//  Copyright © 2018 ZaimRamlan. All rights reserved.
//

import UIKit

struct Seeds {
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
