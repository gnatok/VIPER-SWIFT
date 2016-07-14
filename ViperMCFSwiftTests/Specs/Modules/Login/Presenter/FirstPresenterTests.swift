//
//  FirstModuleFirstModulePresenterTests.swift
//  ViperMCFSwift
//
//  Created by gnatok on 14/07/2016.
//  Copyright © 2016 gnatok. All rights reserved.
//

import XCTest
@testable import ViperMCFSwift

class FirstModulePresenterTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    class MockInteractor: FirstModuleInteractorInput {

    }

    @objc class MockRouter: NSObject, FirstModuleRouterInput {
        func openSecondModuleWithExampleString(data: String) {}
        func instantiateThirdModuleWithExampleString(data: String) {}
    }

    class MockViewController: FirstModuleViewInput {

        func setupInitialState() {}
        
        func getDataWithResultBlock(resultBlock: DataResultBlock) { }
    }
}
