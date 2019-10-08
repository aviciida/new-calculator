//
//  AppEnvironment.swift
//  AppCore
//
//  Created by Shun Usami on 2019/10/01.
//  Copyright © 2019 Yenom Inc. All rights reserved.
//

import Foundation

public final class AppEnvironment: AppInfoProvider {
    // MARK: AppInfo
    public var appInfo: AppInfo

    public init(appInfo: AppInfo) {
        self.appInfo = appInfo
    }
}
