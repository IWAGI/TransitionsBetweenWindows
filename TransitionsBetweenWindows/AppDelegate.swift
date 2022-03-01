//
//  AppDelegate.swift
//  TransitionsBetweenWindows
//
//  Created by Mikhail on 01.03.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
               
        window?.rootViewController = MainTabBarController()
        window?.makeKeyAndVisible()
        return true
    }
}

