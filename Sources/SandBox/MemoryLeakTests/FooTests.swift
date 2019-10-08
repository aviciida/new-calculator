//
//  FooTests.swift
//  MemoryLeakTests
//
//  Created by 飯田諒 on 2019/10/08.
//  Copyright © 2019 Yenom Inc. All rights reserved.
//

import XCTest
import XCTAssertNoLeak
import AppCore
import TestCore
@testable import Foo

class FooTests: XCTestCase {
    var environment: EnvironmentProvider {
        return EnvironmentMock()
    }

    func testExampleViewController() {
        XCTAssertNoLeak(loadView(FooViewController(with: (), environment: environment)))
    }
}
