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

class AppCoordinatorTest: XCTestCase {
	
	private var sut: AppCoordinator?
	private var windowMock: UIWindowMock?
	private var navigationControllerMock: UINavigationControllerMock?
	private var coordinatorsFactoryMock: CoordinatorsFactoryMock?
	private var fetchResitoriesCoordinatorMock: FetchResitoriesCoordinatorMock?

	override func setUp() {
		navigationControllerMock = UINavigationControllerMock()
		fetchResitoriesCoordinatorMock = FetchResitoriesCoordinatorMock(navigationController: navigationControllerMock!)
		coordinatorsFactoryMock = CoordinatorsFactoryMock(
			navigationControllerMock: navigationControllerMock!,
			fetchResitoriesCoordinatorMock: fetchResitoriesCoordinatorMock!
		)
		windowMock = UIWindowMock()
		sut = AppCoordinator(window: windowMock!,
							 navigationController: navigationControllerMock!,
							 coordinatorsFactory: coordinatorsFactoryMock!)
	}
	
	func testSetupWindowOnInit() {
		XCTAssertTrue(windowMock!.hasMakeKeyAndVisible == true)
		XCTAssertTrue(windowMock!.rootViewController == navigationControllerMock)
	}
	
	func testStartFetchRepositoriesCoordinatorOnStart() {
		sut?.start()
		XCTAssertTrue(fetchResitoriesCoordinatorMock!.hasStarted == true)
	}
}

// TODO: Extract to another class inside presenter/mock folder
class UIWindowMock: UIWindow {
	var hasMakeKeyAndVisible: Bool?
	
	override func makeKeyAndVisible() {
		hasMakeKeyAndVisible = true
	}
}

// TODO: Extract to another class inside presenter/coordinator/mock folder
class CoordinatorsFactoryMock: CoordinatorsFactory {
	let fetchResitoriesCoordinatorMock: FetchResitoriesCoordinator
	
	init(navigationControllerMock: UINavigationController,
		fetchResitoriesCoordinatorMock: FetchResitoriesCoordinator) {
		self.fetchResitoriesCoordinatorMock = fetchResitoriesCoordinatorMock
		super.init(navigationController: navigationControllerMock)
	}
	
	override func makeFetchRepositoriesCoordinator() -> FetchResitoriesCoordinator {
		return fetchResitoriesCoordinatorMock
	}
}

// TODO: Extract to another class inside presenter/coordinator/mock folder
class FetchResitoriesCoordinatorMock: FetchResitoriesCoordinator {
	var hasStarted: Bool?
	
	override func start() {
		hasStarted = true
	}
}
