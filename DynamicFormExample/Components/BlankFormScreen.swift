//
//  BlankFormScreen.swift
//  DynamicFormExample
//
//  Created by Hugo Flores Perez on 8/14/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

import UIKit

class BlankFormScreen: UITableViewCell {
    static let reuseIdentifier = "BlankFormScreen"
    
    func setView(_ newView: UIView) {
        contentView.subviews.forEach{ $0.removeFromSuperview() }
        contentView.addSubview(newView)
        newView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        newView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        newView.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        newView.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
    }
}
