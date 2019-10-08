//
//  AppDelegate.swift
//  App
//
//  Created by Shun Usami on 2019/09/30.
//  Copyright © 2019 Yenom Inc. All rights reserved.
//

import UIKit
import AppCore

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        if #available(iOS 13, *) {
        } else {
            let environment = AppEnvironment(appInfo: AppInfoImpl())
            confitgure(environment)
            logger.info("\(environment.appInfo)")
            logger.info("\(Device.current.infoDescription)")

            let window = UIWindow(frame: UIScreen.main.bounds)
            self.window = window
            window.makeKeyAndVisible()

            let vc = environment.apply(ExampleViewControllerRequest()).viewController
            window.rootViewController = vc
        }

        return true
    }

    // MARK: UISceneSession Lifecycle
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }

}
