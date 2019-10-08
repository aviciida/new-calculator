//
//  configure.swift
//  App
//
//  Created by Shun Usami on 2019/10/02.
//  Copyright © 2019 Yenom Inc. All rights reserved.
//

import Foundation
import AppCore

internal func confitgure(_ environment: EnvironmentProvider) {
    logger = Logger(label: environment.appInfo.bundleIdentifier)
    switch environment.appInfo.buildConfiguration {
    case .debug:
        logger.logLevel = .debug
    case .release:
        logger.logLevel = .critical
    }
}
