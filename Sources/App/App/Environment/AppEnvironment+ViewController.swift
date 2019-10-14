//
//  AppEnvironment+ViewController.swift
//  App
//
//  Created by Shun Usami on 2019/10/01.
//  Copyright © 2019 Yenom Inc. All rights reserved.
//

import Foundation
import AppCore
import FeatureExample
import Calculator

extension AppEnvironment: ViewControllerProvider {
    public func apply(_ request: ExampleViewControllerRequest) -> ExampleViewControllerRequest.EnvironmentResponse {
        return request.response(for: ExampleViewController.self, environment: self)
    }

    public func apply(_ request: CalculatorViewControllerRequest) -> CalculatorViewControllerRequest.EnvironmentResponse {
        return request.response(for: CalculatorViewController.self, environment: self)
    }
}
