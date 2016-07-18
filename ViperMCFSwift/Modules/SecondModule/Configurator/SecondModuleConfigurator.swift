//
//  SecondModuleSecondModuleConfigurator.swift
//  ViperMCFSwift
//
//  Created by gnatok on 14/07/2016.
//  Copyright © 2016 gnatok. All rights reserved.
//

import UIKit

class SecondModuleModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? SecondModuleViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: SecondModuleViewController) {

        let router = SecondModuleRouter()
        router.transitionHandler = viewController

        let presenter = SecondModulePresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = SecondModuleInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
