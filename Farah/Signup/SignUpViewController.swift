//
//  SignUpViewController.swift
//  Farah
//
//  Created by Adar Butel on 9/21/16.
//  Copyright © 2016 com.adarbutel. All rights reserved.
//

import UIKit

private let labelSize = 15 as CGFloat
private let TFFontSize = 25 as CGFloat

// MARK: Properties & View Controller Methods
class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        
        // Add Gesture Recognizers To Close Keyboard
        let tap = UITapGestureRecognizer(target: self, action: #selector(endEditing))
        let swipe = UISwipeGestureRecognizer(target: self, action: #selector(endEditing))
        swipe.direction = .down
        view.addGestureRecognizer(tap)
        view.addGestureRecognizer(swipe)
        
        // Add button method
        signupButton.addTarget(self, action: #selector(signUpTapped), for: .touchUpInside)
        maleButton.addTarget(self, action: #selector(genderSelected), for: .touchUpInside)
        femaleButton.addTarget(self, action: #selector(genderSelected), for: .touchUpInside)
        
        // Make the nameTextField active immediately
        nameTextField.becomeFirstResponder()
        nameTextField.delegate = self
    }
    
    // Label above nameTextField
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Name"
        label.textColor = .lightGray
        label.font = UIFont.systemFont(ofSize: labelSize)
        label.textAlignment = .center
        label.frame.size.height = 15
        return label
    }()
    
    // TextField to enter name, will eventually be saved in NSUserDefaults probably
    let nameTextField: UITextField = {
        let textField = UITextField()
        textField.text = ""
        textField.textAlignment = .center
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.layer.borderWidth = 1
        textField.font = UIFont.systemFont(ofSize: TFFontSize)
        textField.autocapitalizationType = .words
        textField.textColor = .lightGray
        textField.keyboardAppearance = .dark
        textField.returnKeyType = .continue
        return textField
    }()
    
    // Button to signup
    let signupButton: UIButton = {
        let button = UIButton()
        button.setTitle("", for: .normal)
        button.setImage(#imageLiteral(resourceName: "Signup"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    // MARK: Gender Buttons
    let maleButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "Male Button"), for: .normal)
        button.setImage(#imageLiteral(resourceName: "Male Button Selected"), for: .selected)
        return button
    }()
    
    let femaleButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "Female Button"), for: .normal)
        button.setImage(#imageLiteral(resourceName: "Female Button Selected"), for: .selected)
        return button
    }()
}
