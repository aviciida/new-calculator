//
//  NibProtocol.swift
//  AppBundle
//
//  Created by Shun Usami on 2019/10/01.
//  Copyright © 2019 Yenom Inc. All rights reserved.
//

import UIKit
import Foundation

public protocol NibProtocol {
    static var nib: UINib { get }
    var nib: UINib { get }
}

public extension NibProtocol where Self: ClassNameProtocol {
    static var nib: UINib {
        return UINib(nibName: className, bundle: Bundle.appBundle)
    }

    var nib: UINib {
        return UINib(nibName: className, bundle: Bundle.appBundle)
    }
}
