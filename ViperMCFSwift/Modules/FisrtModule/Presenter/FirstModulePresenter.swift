//
//  FirstModulePresenter.swift
//  ViperMCFSwift
//
//  Created by gnatok on 14/07/2016.
//  Copyright © 2016 gnatok. All rights reserved.
//
import Foundation

class FirstModulePresenter: NSObject, FirstModuleModuleInput, FirstModuleViewOutput, FirstModuleInteractorOutput {

    weak var view: FirstModuleViewInput!
    var interactor: FirstModuleInteractorInput!
    var router: FirstModuleRouterInput!

    func viewIsReady() {}
    
    func sendDataButtonClicled() {
        view.getDataWithResultBlock { [weak self] (data) in
            self?.router.openSecondModuleWithExampleString(data)
        }
    }
    
    func instantiateThirdModule() {
        view.getDataWithResultBlock { [weak self] (data) in
            self?.router.instantiateThirdModuleWithExampleString(data)
        }
    }
    
    func moduleConfigurationMethod(string: String) {
        view.setTextInEditField(string)
    }
}
