//
//  CalculatorViewController.swift
//  Calculator
//
//  Created by 飯田諒 on 2019/10/14.
//  Copyright © 2019 RyoIida. All rights reserved.
//
import AppCore
import UIKit
import AppBundle

public final class CalculatorViewController: UIViewController, Instantiatable {
    public typealias Input = Void

    public typealias Environment = EnvironmentProvider
    public var environment: Environment
    private lazy var viewModel: CalculatorViewModel = CalculatorViewModel()

    public init(with input: Input, environment: Environment) {
        self.environment = environment
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private lazy var calculatorView: CalculatorView = CalculatorView(frame: UIScreen.main.bounds)

    public override func loadView() {
        self.view = calculatorView
        calculatorView.setUp()
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        setUpCalculatorViewModel()

    }

    private func setUpCalculatorViewModel() {
        viewModel.mainLabelTextHandler = { [weak self] newValue in
            self?.calculatorView.mainLabel.text = newValue
        }
        viewModel.subLabelTextHandler = { [weak self] newValue in
            self?.calculatorView.subLabel.text = newValue
        }
        let buttonsArray = calculatorView.arrayOfInputtableButtons()
        buttonsArray.forEach {
            $0.addTarget(self, action: #selector(input(_:)), for: .touchUpInside)

        }
        calculatorView.clear.addTarget(self, action: #selector(didTapClear), for: .touchUpInside)
        calculatorView.popNumberButton.addTarget(self, action: #selector(didTapDelete), for: .touchUpInside)
    }

    @objc private func input(_ sender: UIButton) {
        guard let label = sender.titleLabel, let text = label.text else { return }
        viewModel.input(text)
    }

    @objc private func didTapClear() {
        viewModel.didTapClear()
    }

    @objc private func didTapDelete() {
        viewModel.didTapDelete()
    }

}
