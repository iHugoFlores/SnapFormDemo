//
//  SceneDelegate.swift
//  DynamicFormExample
//
//  Created by Hugo Flores Perez on 8/14/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.backgroundColor = .systemBackground
        window?.windowScene = windowScene
        window?.rootViewController = UINavigationController(rootViewController: HomeScreen())
        window?.makeKeyAndVisible()
    }
}

