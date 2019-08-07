//
//  FetchRepositoriesTest.swift
//  GitHubClientSwiftTests
//
//  Created by Guilherme Cherubini on 07/08/19.
//  Copyright © 2019 Cherubini Sperotto. All rights reserved.
//

import UIKit
import XCTest
@testable import GitHubClientSwift

class FetchRepositoriesTest: XCTestCase {
	
	private var sut: FetchResitoriesCoordinator?
    private var navigationControllerMock: UINavigationControllerMock?

	override func setUp() {
		navigationControllerMock = UINavigationControllerMock()
		sut = FetchResitoriesCoordinator(navigationController: navigationControllerMock!)
	}

	func testPushHomeViewControllerOnStart() {
		sut!.start()
		XCTAssertTrue(navigationControllerMock?.pushedViewController
			is HomeViewController)
		XCTAssertTrue(navigationControllerMock?.isPushedViewControllerAnimated
			== true)
	}
}
