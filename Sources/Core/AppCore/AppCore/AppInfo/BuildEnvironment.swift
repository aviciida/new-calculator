//
//  BuildEnvironment.swift
//  AppCore
//
//  Created by Shun Usami on 2019/10/02.
//  Copyright © 2019 Yenom Inc. All rights reserved.
//

import Foundation

public enum BuildEnvironment {
    case development, distribution
}

extension BuildEnvironment: CustomStringConvertible {
    public var description: String {
        switch self {
        case .development: return "Development"
        case .distribution: return "Distribution"
        }
    }
}
