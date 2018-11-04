//
//  AnimateExampleViewController.swift
//  StackViewExamples
//
//  Created by VAndrJ.
//  Copyright © 2018 VAndrJ. All rights reserved.
//

import UIKit

class AnimateExampleViewController: UIViewController {
    @IBOutlet weak var stackView: UIStackView!

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setStackViewBeginState()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        animateStackViewToEndState()
    }

    /// Set initial UIStackView state according to "design" - zero elements size with horizontal arranged views.
    private func setStackViewBeginState() {
        stackView.axis = .horizontal
        stackView.subviews.forEach({ $0.transform = CGAffineTransform(rotationAngle: .pi) })
        stackView.transform = CGAffineTransform(scaleX: 0, y: 0)
    }

    private func animateStackViewToEndState() {
        let animations = {
            self.stackView.axis = .vertical
            self.stackView.transform = .identity
            self.stackView.subviews.forEach({ $0.transform = .identity })
            self.view.layoutIfNeeded()
        }
        UIView.animate(
            withDuration: 1,
            delay: 0,
            usingSpringWithDamping: 0.6,
            initialSpringVelocity: 1.2,
            options: .curveEaseOut,
            animations: animations,
            completion: nil
        )
    }
}
