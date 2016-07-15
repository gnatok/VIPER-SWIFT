//
//  SecondModuleSecondModulePresenter.swift
//  ViperMCFSwift
//
//  Created by gnatok on 14/07/2016.
//  Copyright © 2016 gnatok. All rights reserved.
//

import Foundation
import ViperMcFlurry

class SecondModulePresenter: NSObject, SecondModuleModuleInput, SecondModuleViewOutput, SecondModuleInteractorOutput {

    weak var view: SecondModuleViewInput!
    var interactor: SecondModuleInteractorInput!
    var router: SecondModuleRouterInput!
    var firstModuleInput: FirstModuleModuleInput!

    var exampleString: String?

    func viewIsReady() {
        view.setExampleString(exampleString!)
    }
    
    func configureWithExampleString(data: String) {
        exampleString = data
    }
    
    @objc func setModuleOutput(moduleOutput: RamblerViperModuleOutput!) {
        firstModuleInput = moduleOutput as! FirstModuleModuleInput
    }
    
    func sendDataWasClicked() {
        firstModuleInput.moduleConfigurationMethod("Data from second module")
    }

}
