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
    @IBOutlet public weak var mainLabel: UILabel!
    @IBOutlet public weak var subLabel: UILabel!
    @IBOutlet public weak var one: UIButton!
    @IBOutlet public weak var two: UIButton!
    @IBOutlet public weak var three: UIButton!
    @IBOutlet public weak var four: UIButton!
    @IBOutlet public weak var five: UIButton!
    @IBOutlet public weak var six: UIButton!
    @IBOutlet public weak var seven: UIButton!
    @IBOutlet public weak var eight: UIButton!
    @IBOutlet public weak var nine: UIButton!
    @IBOutlet public weak var zero: UIButton!
    @IBOutlet public weak var clear: UIButton!
    @IBOutlet public weak var equal: UIButton!
    @IBOutlet public weak var add: UIButton!
    @IBOutlet public weak var minus: UIButton!
    @IBOutlet public weak var multiply: UIButton!
    @IBOutlet public weak var devide: UIButton!
    @IBOutlet public weak var popNumberButton: UIButton!

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

    public func arrayOfInputtableButtons() -> [UIButton] {
        return [one, two, three, four, five, six, seven, eight, nine, zero, equal, add, minus, multiply, devide]
    }

}
