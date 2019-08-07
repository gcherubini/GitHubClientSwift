//
//  AppCoordinator.swift
//  GitHubClientSwift
//
//  Created by Guilherme Cherubini on 31/07/19.
//  Copyright © 2019 Cherubini Sperotto. All rights reserved.
//

import Foundation
import UIKit

class AppCoordinator {
	
	private let window: UIWindow
	private let navigationController: UINavigationController
	
	init(window: UIWindow = UIWindow(),
			 navigationController: UINavigationController = UINavigationController()) {
		self.window = window
		self.navigationController = navigationController
        setupWindow()
	}
    
    private func setupWindow() {
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
	
	func start() {
        FetchResitoriesCoordinator(navigationController: navigationController).start()
	}
    
}

