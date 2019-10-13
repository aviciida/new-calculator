//
//  ViewControllerProvider.swift
//  AppCore
//
//  Created by Shun Usami on 2019/10/01.
//  Copyright © 2019 Yenom Inc. All rights reserved.
//

import Foundation

public protocol ViewControllerProvider {
    func apply(_ request: ExampleViewControllerRequest)
        -> ExampleViewControllerRequest.EnvironmentResponse

    func apply(_ request: CalculatorViewControllerRequest)
        -> CalculatorViewControllerRequest.EnvironmentResponse
}
