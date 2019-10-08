//
//  ViewCatalog.swift
//  AppBundle
//
//  Created by Shun Usami on 2019/10/01.
//  Copyright © 2019 Yenom Inc. All rights reserved.
//

import Foundation

private enum Feature {
    case example
}

private func getViewCatalog(_ feature: Feature) {
    switch feature {
    case .example:
        ()
//        _ = ExampleView.self
    }
}
