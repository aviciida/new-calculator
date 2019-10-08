//
//  UIImage+Extension.swift
//  AppBundle
//
//  Created by Shun Usami on 2019/10/01.
//  Copyright © 2019 Yenom Inc. All rights reserved.
//

import UIKit
import Foundation

public struct WrappedAppBundleImage: _ExpressibleByImageLiteral {
    public let image: UIImage?

    public init(imageLiteralResourceName name: String) {
        image = UIImage(named: name, in: Bundle.appBundle, compatibleWith: nil)
    }
}

public extension UIImage {
    static func fromAppBundle(_ wrappedImage: WrappedAppBundleImage) -> UIImage? {
        return wrappedImage.image
    }
}
