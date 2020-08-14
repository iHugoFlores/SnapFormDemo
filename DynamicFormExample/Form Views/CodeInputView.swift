//
//  CodeInputView.swift
//  DynamicFormExample
//
//  Created by Hugo Flores Perez on 8/14/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

import UIKit

class CodeInputView: UIView {
    let titlelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Enter Code"
        return label
    }()
    
    let codeField: UITextField = {
        let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.placeholder = "Code"
        return field
    }()
    
    let codeInstructionsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Enter Code emailed to you"
        return label
    }()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init() {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        addSubview(titlelabel)
        addSubview(codeField)
        addSubview(codeInstructionsLabel)

        titlelabel.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        titlelabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).isActive = true
        titlelabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -8).isActive = true
        
        codeField.topAnchor.constraint(equalTo: titlelabel.bottomAnchor, constant: 8).isActive = true
        codeField.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).isActive = true
        codeField.rightAnchor.constraint(equalTo: rightAnchor, constant: -8).isActive = true

        codeInstructionsLabel.topAnchor.constraint(equalTo: codeField.bottomAnchor, constant: 8).isActive = true
        codeInstructionsLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 8).isActive = true
        codeInstructionsLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -8).isActive = true
    }
}
