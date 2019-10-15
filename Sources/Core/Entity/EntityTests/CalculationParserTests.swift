//
//  CalculationParserTests.swift
//  EntityTests
//
//  Created by 飯田諒 on 2019/10/14.
//  Copyright © 2019 RyoIida. All rights reserved.
//

import XCTest
@testable import Entity

class CalculationParserTests: XCTestCase {

    func testParse() {
        let parsed = CalculationParser.parse("44")
        XCTAssertEqual(parsed.numbers, ["44"])
        XCTAssertEqual(parsed.operators, []) // Returns an array of nothing?

        let parsed1 = CalculationParser.parse("53+42")
        XCTAssertEqual(parsed1.numbers, ["53", "42"])
        XCTAssertEqual(parsed1.operators, [CalculationOperator.plus])

        let parsed2 = CalculationParser.parse("0.5-4")
        XCTAssertEqual(parsed2.numbers, ["0.5", "4"])
        XCTAssertEqual(parsed2.operators, [CalculationOperator.minus])

        let parsed3 = CalculationParser.parse("4×20÷4")
        XCTAssertEqual(parsed3.numbers, ["4", "20", "4"])
        XCTAssertEqual(parsed3.operators, [CalculationOperator.multiply, CalculationOperator.devide])

    }

}
