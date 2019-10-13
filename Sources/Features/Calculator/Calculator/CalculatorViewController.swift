//
//  CalculatorViewController.swift
//  Calculator
//
//  Created by 飯田諒 on 2019/10/13.
//  Copyright © 2019 RyoIida. All rights reserved.
//

import UIKit
import AppCore
import AppBundle

public final class CalculatorViewController: UIViewController, Instantiatable {
    // MARK: - Mew.Instantiatable
    public typealias Input = Void
    public typealias Environment = EnvironmentProvider
    public var environment: Environment
//    private var calculatorView: CalculatorView!

    public init(with input: Input, environment: Environment) {
        self.environment = environment
        super.init(nibName: nil, bundle: nil)
    }

    // MARK: - UIViewController
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private lazy var calculatorView: CalculatorView = CalculatorView(frame: UIScreen.main.bounds)
    public override func loadView() {
//        calculatorView = CalculatorView(frame: view.bounds)
        self.view = calculatorView
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
//        setUp()
    }

//    private func setUp() {
//        calculatorView = CalculatorView(frame: view.bounds)
//        calculatorView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        view.addSubview(calculatorView)
//    }

}
