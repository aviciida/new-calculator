//
//  CalculatorView.swift
//  AppBundle
//
//  Created by 飯田諒 on 2019/10/14.
//  Copyright © 2019 Yenom Inc. All rights reserved.
//

import Foundation
import UIKit

public final class CalculatorView: XibView {
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var subLabel: UILabel!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var clear: UIButton!
    @IBOutlet weak var equal: UIButton!
    @IBOutlet weak var add: UIButton!
    @IBOutlet weak var minus: UIButton!
    @IBOutlet weak var multiply: UIButton!
    @IBOutlet weak var devide: UIButton!

    public func setUp() {
        one.layer.cornerRadius = one.frame.height / 2
        two.layer.cornerRadius = two.frame.height / 2
        three.layer.cornerRadius = three.frame.height / 2
        four.layer.cornerRadius = four.frame.height / 2
        five.layer.cornerRadius = five.frame.height / 2
        six.layer.cornerRadius = six.frame.height / 2
        seven.layer.cornerRadius = seven.frame.height / 2
        eight.layer.cornerRadius = eight.frame.height / 2
        nine.layer.cornerRadius = nine.frame.height / 2
        zero.layer.cornerRadius = zero.frame.height / 2
        equal.layer.cornerRadius = equal.frame.height / 2
        add.layer.cornerRadius = add.frame.height / 2
        minus.layer.cornerRadius = minus.frame.height / 2
        multiply.layer.cornerRadius = multiply.frame.height / 2
        devide.layer.cornerRadius = devide.frame.height / 2
        clear.layer.cornerRadius = clear.frame.height / 2
    }

}
