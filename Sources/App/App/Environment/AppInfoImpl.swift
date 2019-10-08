//
//  AppInfoImpl.swift
//  App
//
//  Created by Shun Usami on 2019/10/02.
//  Copyright © 2019 Yenom Inc. All rights reserved.
//

import Foundation
import AppCore

internal struct AppInfoImpl: AppInfo {
    init() {}

    var displayName: String {
        // swiftlint:disable:next force_cast
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleDisplayName") as! String
    }

    var bundleIdentifier: String {
        // swiftlint:disable:next force_cast
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleIdentifier") as! String
    }

    var appVersion: String {
        // swiftlint:disable:next force_cast
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
    }

    var buildNumber: String {
        // swiftlint:disable:next force_cast
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as! String
    }

    var gitCommitHash: String {
        return GIT_SHA_VERSION
    }

    var buildEnvironment: BuildEnvironment {
        #if PRODUCTION
        return .distribution
        #elseif DEVELOPMENT
        return .development
        #else
        fatalError("No env flag is found")
        #endif
    }

    var buildConfiguration: BuildConfiguration {
        #if DEBUG
        return .debug
        #else
        return .release
        #endif
    }
}
