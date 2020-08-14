//
//  PasswordInputView.swift
//  DynamicFormExample
//
//  Created by Hugo Flores Perez on 8/14/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

import UIKit

class PasswordInputView: UIView {
    let titlelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Set Password"
        return label
    }()
    
    let passwordField1: UITextField = {
        let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.placeholder = "***"
        return field
    }()
    
    let passwordField2: UITextField = {
        let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.placeholder = "***"
        return field
    }()
    
    let codeInstructionsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Password must contain..."
        return label
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init() {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        addSubview(titlelabel)
        addSubview(passwordField1)
        addSubview(passwordField2)
        addSubview(codeInstructionsLabel)

        titlelabel.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        titlelabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).isActive = true
        titlelabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -8).isActive = true
        
        passwordField1.topAnchor.constraint(equalTo: titlelabel.bottomAnchor, constant: 8).isActive = true
        passwordField1.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).isActive = true
        passwordField1.rightAnchor.constraint(equalTo: rightAnchor, constant: -8).isActive = true
        
        passwordField2.topAnchor.constraint(equalTo: passwordField1.bottomAnchor, constant: 8).isActive = true
        passwordField2.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).isActive = true
        passwordField2.rightAnchor.constraint(equalTo: rightAnchor, constant: -8).isActive = true

        codeInstructionsLabel.topAnchor.constraint(equalTo: passwordField2.bottomAnchor, constant: 8).isActive = true
        codeInstructionsLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).isActive = true
        codeInstructionsLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -8).isActive = true
    }
}
