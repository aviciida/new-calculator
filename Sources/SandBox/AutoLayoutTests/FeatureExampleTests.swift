//
//  FeatureExampleTests.swift
//  AutoLayoutTests
//
//  Created by Shun Usami on 2019/10/01.
//  Copyright © 2019 Yenom Inc. All rights reserved.
//

import XCTest
import XCTAssertAutolayout
import AppCore
import TestCore
@testable import FeatureExample

class FeatureExampleTests: XCTestCase {
    var environment: EnvironmentProvider {
        return EnvironmentMock()
    }

    func testExampleViewController() {
        let viewController = ExampleViewController(with: (), environment: environment)
        XCTAssertAutolayout(viewController)
    }
}
