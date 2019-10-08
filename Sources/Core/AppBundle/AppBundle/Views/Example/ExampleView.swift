//
//  ExampleView.swift
//  AppBundle
//
//  Created by Shun Usami on 2019/10/01.
//  Copyright © 2019 Yenom Inc. All rights reserved.
//

import Foundation
import UIKit

public final class ExampleView: XibView {
    @IBOutlet public weak var label: UILabel!
    @IBOutlet public weak var button: UIButton!

    public var didPush: (() -> Void)?

    @IBAction func didPushButton(_ sender: Any) {
        didPush?()
    }
}
