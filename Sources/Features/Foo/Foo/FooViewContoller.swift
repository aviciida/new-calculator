//
//  FooViewContoller.swift
//  Foo
//
//  Created by 飯田諒 on 2019/10/08.
//  Copyright © 2019 RyoIida. All rights reserved.
//

import UIKit
import AppCore
import AppBundle

public final class FooViewController: UIViewController, Instantiatable {
    // MARK: - Mew.Instantiatable
    public typealias Input = Void
    public typealias Environment = EnvironmentProvider
    public var environment: Environment

    public init(with input: Input, environment: Environment) {
        self.environment = environment
        super.init(nibName: nil, bundle: nil)
    }

    // MARK: - UIViewController
    @available(*, unavailable)
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private lazy var exampleView: ExampleView = ExampleView(frame: UIScreen.main.bounds)
    public override func loadView() {
        self.view = exampleView
        self.exampleView.label.backgroundColor = .orange
//        self.exampleView.view.backgroundColor = .orange
    }

    override public func viewDidLoad() {
        super.viewDidLoad()
        logger.debug("Debug info")
        logger.info("Info info")
        logger.error("Error info")
    }
}
