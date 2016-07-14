//
//  FirstModuleConfiguratorTests.swift
//  ViperMCFSwift
//
//  Created by gnatok on 14/07/2016.
//  Copyright © 2016 gnatok. All rights reserved.
//

import XCTest
@testable import ViperMCFSwift

class FirstModuleConfiguratorTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testConfigureModuleForViewController() {

        //given
        let viewController = FirstModuleViewControllerMock()
        let configurator = FirstModuleConfigurator()

        //when
        configurator.configureModuleForViewInput(viewController)

        //then
        XCTAssertNotNil(viewController.output, "FirstModuleViewController is nil after configuration")
        XCTAssertTrue(viewController.output is FirstModulePresenter, "output is not FirstModulePresenter")

        let presenter: FirstModulePresenter = viewController.output as! FirstModulePresenter
        XCTAssertNotNil(presenter.view, "view in FirstModulePresenter is nil after configuration")
        XCTAssertNotNil(presenter.router, "router in FirstModulePresenter is nil after configuration")
        XCTAssertTrue(presenter.router is FirstModuleRouter, "router is not FirstModuleRouter")

        let interactor: FirstModuleInteractor = presenter.interactor as! FirstModuleInteractor
        XCTAssertNotNil(interactor.output, "output in FirstModuleInteractor is nil after configuration")
    }

    class FirstModuleViewControllerMock: FirstModuleViewController {

        var setupInitialStateDidCall = false

        override func setupInitialState() {
            setupInitialStateDidCall = true
        }
    }
}
