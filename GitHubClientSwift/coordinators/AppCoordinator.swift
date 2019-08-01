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
    var starterCoordinator: Coordinator?
	
	init(window: UIWindow = UIWindow(),
			 navigationController: UINavigationController = UINavigationController()) {
		self.window = window
		self.navigationController = navigationController
        setupStarterCoordinator()
        start()
	}
	
	func start() {
		starterCoordinator?.start()
	}
    
    private func setupStarterCoordinator() {
        starterCoordinator = FetchResitoriesCoordinators()
    }
}

