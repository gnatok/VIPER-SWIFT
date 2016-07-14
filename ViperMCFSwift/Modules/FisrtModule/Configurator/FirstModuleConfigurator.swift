//
//  ModuleConfigurator.swift
//  ViperMCFSwift
//
//  Created by gnatok on 14/07/2016.
//  Copyright © 2016 gnatok. All rights reserved.
//

import UIKit

class FirstModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? FirstModuleViewController {
            configure(viewController)
        }
    }

    private func configure(viewController: FirstModuleViewController) {

        let router = FirstModuleRouter()
        router.transitionHandler = viewController

        let presenter = FirstModulePresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = FirstModuleInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
