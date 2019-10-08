//
//  Bundle+Extension.swift
//  AppBundle
//
//  Created by Shun Usami on 2019/10/01.
//  Copyright © 2019 Yenom Inc. All rights reserved.
//

import Foundation

private class DummyClass {}

public extension Bundle {
    static var appBundle: Bundle {
        return Bundle(for: DummyClass.self)
    }
}
