//
//  AppDelegate.swift
//  Challenge-v5.2
//
//  Created by Dinmukhammed Sagyntkan on 15.04.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        window?.rootViewController = RootViewController()
        window?.makeKeyAndVisible()
        return true
    }
}

