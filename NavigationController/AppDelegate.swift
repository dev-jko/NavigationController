//
//  AppDelegate.swift
//  NavigationController
//
//  Created by Jaedoo Ko on 2020/06/16.
//  Copyright © 2020 jko. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let firstViewController = FirstViewController()
        let navigationController = UINavigationController(rootViewController: firstViewController)
        window?.rootViewController = navigationController
        
        return true
    }


}

