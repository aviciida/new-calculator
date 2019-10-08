//
//  AppInfo.swift
//  AppCore
//
//  Created by Shun Usami on 2019/10/02.
//  Copyright © 2019 Yenom Inc. All rights reserved.
//

import Foundation

public protocol AppInfo: CustomStringConvertible {
    /// Display Name (ex. AppName)
    var displayName: String { get }
    /// BundleIdentifier (ex. com.example.appname)
    var bundleIdentifier: String { get }
    /// Version (ex. 1.0.2)
    var appVersion: String { get }
    /// Build Number (ex. 64)
    var buildNumber: String { get }
    /// Git Commit Hash (ex. 32de831)
    var gitCommitHash: String { get }
    /// The build configuration (debug/release)
    var buildConfiguration: BuildConfiguration { get }
    /// The environment (development/distribution)
    var buildEnvironment: BuildEnvironment { get }
}

// MARK: - CustomStringConvertible
public extension AppInfo {
    var description: String {
        return """


        ------------------------App Information------------------------


        App Name            : \(displayName)
        Bundle Identifier   : \(bundleIdentifier)
        Version             : \(appVersion)
        Build Number        : \(buildNumber)
        Git Commit Hash     : \(gitCommitHash)
        Environment         : \(buildEnvironment)
        Configuration       : \(buildConfiguration)


        ----------------------------------------------------------------

        """
    }
}
