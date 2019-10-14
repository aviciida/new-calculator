//
//  CalculationInputTests.swift
//  EntityTests
//
//  Created by 飯田諒 on 2019/10/14.
//  Copyright © 2019 RyoIida. All rights reserved.
//

import XCTest
@testable import Entity

class CalculationInputTests: XCTestCase {

    func testInit() {
            let input = CalculationInput(text: nil)
            XCTAssertNil(input)

            let input1 = CalculationInput(text: ".")
            XCTAssertEqual(input1, CalculationInput.dot)

            let input2 = CalculationInput(text: "3")
            XCTAssertEqual(input2, CalculationInput.number(3))

            let input3 = CalculationInput(text: "0")
            XCTAssertEqual(input3, CalculationInput.number(0))

            let input4 = CalculationInput(text: "+")
            XCTAssertEqual(input4, CalculationInput.operator(.plus))

            let input5 = CalculationInput(text: "-")
            XCTAssertEqual(input5, CalculationInput.operator(.minus))

            let input6 = CalculationInput(text: "×")
            XCTAssertEqual(input6, CalculationInput.operator(.multiply))

            let input7 = CalculationInput(text: "a")
            XCTAssertEqual(input7, nil)

        }

        func testCanAppendTo() {
            let input = CalculationInput.number(1)
            XCTAssertEqual(input.canAppendTo(rawText: "0"), true)
            XCTAssertEqual(input.canAppendTo(rawText: "2+"), true)

            let input1 = CalculationInput.number(0)
            XCTAssertEqual(input1.canAppendTo(rawText: "0"), false)
            XCTAssertEqual(input1.canAppendTo(rawText: "1"), true)
            XCTAssertEqual(input1.canAppendTo(rawText: "2+"), true)
            XCTAssertEqual(input1.canAppendTo(rawText: "2+0"), false)
            XCTAssertEqual(input1.canAppendTo(rawText: "100"), true)

            let input2 = CalculationInput.operator(.devide)
            XCTAssertEqual(input2.canAppendTo(rawText: ""), false )
            XCTAssertEqual(input2.canAppendTo(rawText: "2"), true )
            XCTAssertEqual(input2.canAppendTo(rawText: "2+"), true )

        }

        func testDotCanAppendTo() {
            // TODO: Enable those tests to pass.
    //        let input3 = CalculationInput.dot
    //        XCTAssertEqual(input3.canAppendTo(rawText: "0"), true)
    //        XCTAssertEqual(input3.canAppendTo(rawText: "0."), false)
    //        XCTAssertEqual(input3.canAppendTo(rawText: "34"), true)
    //        XCTAssertEqual(input3.canAppendTo(rawText: "3+"), true) // 3+0.
    //        XCTAssertEqual(input3.canAppendTo(rawText: "4.234"), false)
    //        XCTAssertEqual(input3.canAppendTo(rawText: "40-0"), true)
    //        XCTAssertEqual(input3.canAppendTo(rawText: "48-34-3"), true)

        }
}
