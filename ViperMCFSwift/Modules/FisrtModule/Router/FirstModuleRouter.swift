//
//  FirstModuleRouter.swift
//  ViperMCFSwift
//
//  Created by gnatok on 14/07/2016.
//  Copyright © 2016 gnatok. All rights reserved.
//

import ViperMcFlurry
import Foundation

class FirstModuleRouter: NSObject, FirstModuleRouterInput {

    let mainStoryBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
    let segueIdentifier = "detailSecondSegue"
    let thirdModuleID = "thirdModuleController"
    var moduleOutput: FirstModuleModuleInput!
    var transitionHandler: RamblerViperModuleTransitionHandlerProtocol!

    var transitionModuleFactory: RamblerViperModuleFactory {
        let factory = RamblerViperModuleFactory(storyboard: mainStoryBoard, andRestorationId: thirdModuleID)
        return factory!
    }

    func openSecondModuleWithExampleString(data: String) {
        transitionHandler.openModule!(usingSegue: segueIdentifier).thenChain { [weak self] moduleInput in

            guard let secondModuleInput = moduleInput as? SecondModuleModuleInput else { fatalError("invalid module type") }
            
            secondModuleInput.configureWithExampleString(data: data)
            return self?.moduleOutput
        }
    }

    
    func instantiateThirdModuleWithExampleString(data: String) {
        transitionHandler.openModule!(usingFactory: transitionModuleFactory) { sourceModuleTransitionHandler, destinationModuleTransitionHandler in
            let sourceVC = sourceModuleTransitionHandler as! UIViewController
            let destinationVC = destinationModuleTransitionHandler as! UIViewController
            sourceVC.navigationController?.pushViewController(destinationVC, animated: true)

        }.thenChain { moduleInput in
            guard let thirdModuleInput = moduleInput as? ThirdModuleModuleInput else { fatalError("invalid module type") }
            thirdModuleInput.configureWithExampleString(data: data)

            return nil
        }
    }
}
