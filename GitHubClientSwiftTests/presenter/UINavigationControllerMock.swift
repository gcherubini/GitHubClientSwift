//
//  UINavigationControllerMock.swift
//  GitHubClientSwiftTests
//
//  Created by Guilherme Cherubini on 07/08/19.
//  Copyright © 2019 Cherubini Sperotto. All rights reserved.
//

import Foundation
import UIKit

class UINavigationControllerMock: UINavigationController {
	var pushedViewController: UIViewController?
	var isPushedViewControllerAnimated: Bool?
	
	override func pushViewController(_ viewController: UIViewController, animated: Bool) {
		pushedViewController = viewController
		isPushedViewControllerAnimated = animated
	}
}
