//
//  FirstModuleRouterInput.swift
//  ViperMCFSwift
//
//  Created by gnatok on 14/07/2016.
//  Copyright © 2016 gnatok. All rights reserved.
//

import Foundation
import ViperMcFlurry

protocol FirstModuleRouterInput: RamblerViperModuleInput {
    func openSecondModuleWithExampleString(data: String)
    func instantiateThirdModuleWithExampleString(data: String)
}
