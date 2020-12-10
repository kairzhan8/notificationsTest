//
//  SceneDelegate.swift
//  notificationsTest
//
//  Created by Kairzhan Kural on 12/10/20.
//  Copyright © 2020 Kairzhan Kural. All rights reserved.
//

import UIKit
import UserNotifications

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let winScene = (scene as? UIWindowScene) else { return }
        
        self.window = UIWindow(windowScene: winScene)
        let controller = UINavigationController(rootViewController: NotificationsTableViewController())
        self.window?.rootViewController = controller
        self.window?.makeKeyAndVisible()
        
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        UIApplication.shared.applicationIconBadgeNumber = 0
    }
}

