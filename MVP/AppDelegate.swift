//
//  AppDelegate.swift
//  MVP
//
//  Created by Jonathan Bijos on 24/03/17.
//  Copyright © 2017 Jonathan Bijos. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        
        let user = User(username: "mobicare", password: "123456")
        let loginView = LoginViewController()
        let loginPresenter = LoginPresenter(view: loginView, user: user)
        loginView.presenter = loginPresenter
        
        window?.rootViewController = loginView
        window?.makeKeyAndVisible()
        
        return true
    }
}

