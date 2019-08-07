//
//  AppDelegate.swift
//  GitHubClientSwift
//
//  Created by Guilherme Cherubini on 31/07/19.
//  Copyright © 2019 Cherubini Sperotto. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?


	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		// Override point for customization after application launch.
        AppCoordinator().start()
		return true
	}


}

