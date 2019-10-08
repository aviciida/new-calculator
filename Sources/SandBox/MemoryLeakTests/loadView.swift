//
//  Utility.swift
//  MemoryLeakTests
//
//  Created by Shun Usami on 2019/10/01.
//  Copyright © 2019 Yenom Inc. All rights reserved.
//

import UIKit

internal func loadView(_ viewController: @autoclosure () -> UIViewController) -> UIViewController {
    let vc = viewController()
    _ = vc.view
    return vc
}
