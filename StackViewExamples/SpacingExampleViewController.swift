//
//  SpacingExampleViewController.swift
//  StackViewExamples
//
//  Created by VAndrJ.
//  Copyright © 2018 VAndrJ. All rights reserved.
//

import UIKit

class SpacingExampleViewController: UIViewController {
    @IBOutlet weak var stackView: UIStackView!

    override func viewDidLoad() {
        super.viewDidLoad()
        bindUI()
    }

    private func bindUI() {
        stackView.arrangedSubviews
            .compactMap({ $0 as? UIButton })
            .forEach({ $0.addTarget(self, action: #selector(addSpacingBelowAction(_:)), for: .touchUpInside) })
    }

    @objc private func addSpacingBelowAction(_ sender: UIButton) {
        stackView.setCustomSpacing(.random(in: 0...100), after: sender)
    }
}
