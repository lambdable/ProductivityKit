//
//  UIViewTests.swift
//  ProductivityKitTests
//
//  Created by Zaim Ramlan on 17/11/2018.
//  Copyright © 2018 ZaimRamlan. All rights reserved.
//

import XCTest
@testable import ProductivityKit

class UIViewTests: XCTestCase {
    
    // MARK: Properties

    typealias Data = Seeds.View
    var view: UIView!

    // MARK: Test Lifecycle
    
    override func setUp() {
        view = UIView()
    }

    override func tearDown() {
        view = nil
    }
    
    // MARK: Test Cases
    
    func testSetupShadow() {
        view.setupShadow(colour: Data.colours[0], opacity: Data.opacity, offset: Data.offset, radius: Data.radius)
        
        XCTAssertFalse(view.layer.masksToBounds)
        XCTAssertEqual(view.layer.shadowColor, Data.colours[0].cgColor)
        XCTAssertEqual(view.layer.shadowOpacity, Data.opacity)
        XCTAssertEqual(view.layer.shadowOffset, Data.offset)
        XCTAssertEqual(view.layer.shadowRadius, Data.radius)
        XCTAssertEqual(view.layer.shadowPath, Data.path(in: view.bounds))
    }
    
    func testSetupBorder() {
        view.setupBorder(colour: Data.colours[0], width: Data.width)
        
        XCTAssertEqual(view.layer.borderColor, Data.colours[0].cgColor)
        XCTAssertEqual(view.layer.borderWidth, Data.width)
    }
    
    func testSetupHorizontalGradient() {
        testSetupGradient(orientation: .horizontal)
    }
    
    func testSetupVerticalGradient() {
        testSetupGradient(orientation: .vertical)
    }

    private func testSetupGradient(orientation: UIView.GradientOrientation) {
        view.setupGradient(colors: Data.colours, locations: Data.locations, orientation: orientation)
        
        let gradient = view.layer.sublayers?.first as? CAGradientLayer
        XCTAssertNotNil(gradient)
        XCTAssertEqual(gradient?.colors as? [CGColor], Data.colours.map({$0.cgColor}))
        XCTAssertEqual(gradient?.locations, Data.locations)
        XCTAssertEqual(gradient?.frame, view.bounds)
        XCTAssertEqual(gradient?.startPoint, CGPoint(x: 0, y: 0))
        
        switch orientation {
        case .horizontal:
            XCTAssertEqual(gradient?.endPoint, CGPoint(x: 1, y: 0))
        case .vertical:
            XCTAssertEqual(gradient?.endPoint, CGPoint(x: 0, y: 1))
        }
    }
}
