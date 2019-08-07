//
//  WelcomeCoordinator.swift
//  GitHubClientSwift
//
//  Created by Guilherme Cherubini on 31/07/19.
//  Copyright © 2019 Cherubini Sperotto. All rights reserved.
//

import Foundation
import UIKit

class FetchResitoriesCoordinator: Coordinator {
    
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
	func start(){
        let viewController = HomeViewController()
        navigationController.pushViewController(viewController, animated: true)
	}
}
