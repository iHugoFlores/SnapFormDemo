//
//  HomeScreen.swift
//  DynamicFormExample
//
//  Created by Hugo Flores Perez on 8/14/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

import UIKit

class HomeScreen: UIViewController {
    
    let myButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        
        myButton.setTitle("Go to form", for: .normal)
        myButton.translatesAutoresizingMaskIntoConstraints = false
        myButton.addTarget(self, action: #selector(navigateToForm), for: .touchUpInside)
        view.addSubview(myButton)
        myButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        myButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @objc func navigateToForm() {
        guard let navigation = navigationController else { return }
        let viewController = FormScreen()
        navigation.pushViewController(viewController, animated: true)
    }
}
