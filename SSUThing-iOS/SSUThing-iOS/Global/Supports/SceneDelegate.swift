//
//  SceneDelegate.swift
//  SSUThing-iOS
//
//  Created by 최지우 on 2023/02/01.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }

        window = UIWindow(windowScene: windowScene)
        window?.windowScene = windowScene
        let navigationController = UINavigationController(rootViewController: TabBarController())
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()

    }
}
