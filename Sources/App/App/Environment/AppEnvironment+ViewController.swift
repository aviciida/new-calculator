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
import Foo

extension AppEnvironment: ViewControllerProvider {
    public func apply(_ request: FooViewControllerRequest) -> FooViewControllerRequest.EnvironmentResponse {
        return request.response(for: FooViewController.self, environment: self)
    }

    public func apply(_ request: ExampleViewControllerRequest) -> ExampleViewControllerRequest.EnvironmentResponse {
        return request.response(for: ExampleViewController.self, environment: self)
    }
}
