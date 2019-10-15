//
//  CalculationOperatorTests.swift
//  EntityTests
//
//  Created by 飯田諒 on 2019/10/14.
//  Copyright © 2019 RyoIida. All rights reserved.
//

import XCTest
@testable import Entity

class CalculationOperatorTests: XCTestCase {

    func testInit() {
        let op1 = CalculationOperator(text: "+")
        XCTAssertTrue(op1 == .some(.plus))

        let op2 = CalculationOperator(text: "-")
        XCTAssertTrue(op2 == .some(.minus))

        let op3 = CalculationOperator(text: "×")
        XCTAssertTrue(op3 == .some(.multiply))

        let op4 = CalculationOperator(text: "÷")
        XCTAssertTrue(op4 == .some(.devide))

        let op5 = CalculationOperator(text: "0")
        XCTAssertTrue(op5 == nil)

        let op6 = CalculationOperator(text: "9")
        XCTAssertTrue(op6 == nil)

        let op7 = CalculationOperator(text: "あ")
        XCTAssertTrue(op7 == nil)

    }

}
