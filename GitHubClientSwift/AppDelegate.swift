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
	var coordinator: AppCoordinator?
	
	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		let navigationController = UINavigationController()
		let coordinatorsFactory = CoordinatorsFactory(
			navigationController: navigationController
		)
		coordinator = AppCoordinator(
			navigationController: navigationController,
			coordinatorsFactory: coordinatorsFactory
		)
		coordinator?.start()
		return true
	}
}
