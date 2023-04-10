//
//  ViewController.swift
//  UIConfigTestDemo
//
//  Created by Jason Anderson on 4/7/23.
//

import UIKit
import WhiteLabelConfigTest

class ViewController: UIViewController {
    let button = DefaultButton()
    let disabledButton = DefaultButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        button.setTitle("BUTTON", for: .normal)
        
        disabledButton.setTitle("DISABLED", for: .normal)
        disabledButton.isEnabled = false
        
        let stack = UIStackView(arrangedSubviews: [button, disabledButton])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 15
        
        view.addSubview(stack)
        view.addConstraints([
            NSLayoutConstraint(item: stack, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.85, constant: 0.0),
            NSLayoutConstraint(item: stack, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0.0),
            NSLayoutConstraint(item: stack, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 0.0)
        ])
    }

}

