//
//  CalculationInput.swift
//  Entity
//
//  Created by 飯田諒 on 2019/10/14.
//  Copyright © 2019 RyoIida. All rights reserved.
//

import Foundation

public enum CalculationInput: Equatable {
    case dot
    case `operator`(CalculationOperator)
    case number(Int)

    public init?(text: String?) {
        guard let inputText = text else { return nil }

        if inputText == "." {
            self = .dot
        } else if let num = Int(inputText) {
            self = .number(num)
        } else if let op = CalculationOperator(text: inputText) {
            self = .operator(op)
        } else {
            return nil
        }

    }

    public func canAppendTo(rawText: String) -> Bool {
        guard !rawText.isEmpty || rawText.count == 25 else { return false }
        switch self {
        case .number(1...9):
            return true
        case .number(0):
            let rawTextArray = Array(rawText)
            if rawText == "0" {
                // If it's still at the initial state and get an input 0, false
                return false
            } else if String(rawTextArray.last!) == "0" {
                // If it's 100, true. If it's 12+0, false
                if let _ = CalculationOperator(text: String(rawTextArray.dropLast().last!)) {
                    return false
                } else {
                    return true
                }
            } else {
                return true
            }
        case .operator:
            return true
        case .dot:
            return false
        default:
            return false
        }
    }

    public func shouldReplace(rawText: String) -> Bool {
        guard !rawText.isEmpty else { return false }
        switch self {
        case .operator:
            if let _ = CalculationOperator(text: String(rawText.last!)) {
                return true
            } else {
                return false
            }
        case .number:
            return rawText == "0" // Replace if rawText is 0 to prevent something like "032"
        @unknown default:
            return false
        }
    }
}
