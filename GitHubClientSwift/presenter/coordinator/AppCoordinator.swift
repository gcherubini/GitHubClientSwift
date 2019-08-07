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
	private let coordinatorsFactory: CoordinatorsFactory

	init(window: UIWindow = UIWindow(),
		 navigationController: UINavigationController,
		 coordinatorsFactory: CoordinatorsFactory) {
		self.window = window
		self.navigationController = navigationController
		self.coordinatorsFactory = coordinatorsFactory
        setupWindow()
	}
	
    private func setupWindow() {
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
	
	func start() {
        coordinatorsFactory
			.makeFetchRepositoriesCoordinator()
			.start()
	}
}

// TODO: Extract to another class and test it
class CoordinatorsFactory {
	private let navigationController: UINavigationController
	
	init(navigationController: UINavigationController) {
		self.navigationController = navigationController
	}
	
	func makeFetchRepositoriesCoordinator() -> FetchResitoriesCoordinator {
		return FetchResitoriesCoordinator(navigationController: navigationController)
	}
}
