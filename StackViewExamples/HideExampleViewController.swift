//
//  HideExampleViewController.swift
//  StackViewExamples
//
//  Created by VAndrJ.
//  Copyright © 2018 VAndrJ. All rights reserved.
//

import UIKit

class HideExampleViewController: UIViewController {
    @IBOutlet var buttons: [UIButton]!

    override func viewDidLoad() {
        super.viewDidLoad()
        bindUI()
    }

    private func bindUI() {
        buttons.forEach({ $0.addTarget(self, action: #selector(hideButtonActon(_:)), for: .touchUpInside) })
    }

    @objc private func hideButtonActon(_ sender: UIButton) {
        buttons.forEach { (button) in
            button.isHidden = button === sender
        }
    }
}
