//
//  UIView+Styling.swift
//  ProductivityKit
//
//  Created by Zaim Ramlan on 17/11/2018.
//  Copyright © 2018 ZaimRamlan. All rights reserved.
//

import UIKit

public extension UIView {
    
    // MARK: - Shadows

    /// Setup the shadow layer of this UIView.
    ///
    /// - Parameters:
    ///   - colour: A UIColor representing the colour of the shadow.
    ///   - opacity: A Float for the opacity of the shadow.
    ///   - offset: A CGSize to determine the shadow's offset from its origin.
    ///   - radius: A CGFloat of the blur radius of the shadow.
    func setupShadow(colour: UIColor, opacity: Float, offset: CGSize, radius: CGFloat) {
        layer.masksToBounds = false
        layer.shadowColor = colour.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = offset
        layer.shadowRadius = radius
        layer.shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: radius).cgPath
    }

    // MARK: - Borders
    
    /// Setup a border surrounding this UIView.
    ///
    /// - Parameters:
    ///   - colour: A UIColor representing the colour of the border.
    ///   - width: A CGFloat representing the thickness of the border.
    func setupBorder(colour: UIColor, width: CGFloat) {
        layer.borderColor = colour.cgColor
        layer.borderWidth = width
    }
    
    // MARK: - Gradients

    /// Constants to represent the CAGradientLayer's orientation.
    ///
    /// - horizontal: Indicates a horizontal CAGradientLayer.
    /// - vertical: Indicates a vertical CAGradientLayer.
    enum GradientOrientation {
        case horizontal, vertical
    }

    /// Setup a gradient layer or override an existing gradient layer with the given colors, locations, orientation and an optional customBound.
    ///
    /// - Parameters:
    ///   - colors: An array of UIColor to be part of the gradient. The number of UIColors must match the number of NSNumbers.
    ///   - locations: An array of NSNumber (between 0.0 - 1.0) specifying each point of the UIColors given. The number of NSNumbers must match the number of UIColors.
    ///   - orientation: The orientation of the gradient; horizontal or vertical.
    ///   - customBounds: An optional CGRect to specify the bounds of the gradient. By default, it is this UIView's bounds.
    func setGradient(colors: [UIColor], locations: [NSNumber], orientation: GradientOrientation, customBounds: CGRect? = nil) {
        guard colors.count == locations.count else { return }
        
        var existingGradient = layer.sublayers?.first(where: { type(of: $0) == CAGradientLayer.self }) as? CAGradientLayer
        let cgColors = colors.map({ $0.cgColor })
        let points = gradientPoints(for: orientation)
        
        if existingGradient == nil {
            let gradient = CAGradientLayer()
            gradient.colors = cgColors
            gradient.locations = locations
            gradient.startPoint = points.start
            gradient.endPoint = points.end
            gradient.frame = customBounds ?? self.bounds
            existingGradient = gradient
            layer.insertSublayer(gradient, at: 0)
            return
        }
        
        existingGradient?.frame = customBounds ?? self.bounds
        existingGradient?.colors = cgColors
    }
    
    private func gradientPoints(for orientation: GradientOrientation) -> (start: CGPoint, end: CGPoint) {
        switch orientation {
        case .horizontal:
            return (CGPoint(x: 0, y: 0), CGPoint(x: 1, y: 0))
        case .vertical:
            return (CGPoint(x: 0, y: 0), CGPoint(x: 0, y: 1))
        }
    }
}
