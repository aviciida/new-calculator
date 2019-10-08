//
//  FooView.swift
//  AppBundle
//
//  Created by 飯田諒 on 2019/10/08.
//  Copyright © 2019 Yenom Inc. All rights reserved.
//

import Foundation
import UIKit

public final class FooView: XibView {
    @IBOutlet public weak var someSwitch: UISwitch!
    @IBOutlet public weak var label: UILabel!

    public var didToggle: ((Bool) -> Void)?

    public var vc: UIViewController?

    @IBAction func didToggleSwitch(_ sender: UISwitch) {
        didToggle?(sender.isOn)
    }
}
