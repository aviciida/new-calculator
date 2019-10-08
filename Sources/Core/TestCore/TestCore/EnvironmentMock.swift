//
//  EnvironmentMock.swift
//  TestCore
//
//  Created by Shun Usami on 2019/10/01.
//  Copyright © 2019 Yenom Inc. All rights reserved.
//

import Foundation
import AppCore

open class EnvironmentMock: EnvironmentProvider {
    public var appInfo: AppInfo { fatalError("Not Implemented") }

    public init() {}
    open func apply<R: EnvironmentRequest>(_ request: R) -> R.EnvironmentResponse {
        fatalError("Not implemented")
    }
}
