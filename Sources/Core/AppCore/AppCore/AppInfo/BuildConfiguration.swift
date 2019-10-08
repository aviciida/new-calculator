//
//  BuildConfiguration.swift
//  AppCore
//
//  Created by Shun Usami on 2019/10/02.
//  Copyright © 2019 Yenom Inc. All rights reserved.
//

import Foundation

public enum BuildConfiguration {
    case release, debug
}

extension BuildConfiguration: CustomStringConvertible {
    public var description: String {
        switch self {
        case .debug: return "Debug"
        case .release: return "Release"
        }
    }
}
