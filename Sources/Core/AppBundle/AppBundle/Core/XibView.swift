//
//  XibView.swift
//  AppBundle
//
//  Created by Shun Usami on 2019/10/01.
//  Copyright © 2019 Yenom Inc. All rights reserved.
//

import UIKit
import Foundation

public class XibView: UIView, NibProtocol {
    @IBOutlet private(set) var view: UIView! {
        didSet {
            view.frame = bounds
            addSubview(view)
            view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        }
    }

    override public init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadNib()
    }

    public func loadNib() {
        nib.instantiate(withOwner: self, options: nil)
    }
}
