//
//  HideAnimatedExampleViewController.swift
//  StackViewExamples
//
//  Created by VAndrJ.
//  Copyright © 2018 VAndrJ. All rights reserved.
//

import UIKit

class HideAnimatedExampleViewController: UIViewController {
    @IBOutlet weak var buttonsContainerStackView: UIStackView!
    @IBOutlet weak var someButton: UIButton!

    @IBAction func toggleButonHideAction(_ sender: UIButton) {
        UIView.animate(
            withDuration: 0.5,
            animations: {
                self.someButton.isHidden.toggle()
                self.buttonsContainerStackView.layoutIfNeeded()
            }
        )
    }
}
