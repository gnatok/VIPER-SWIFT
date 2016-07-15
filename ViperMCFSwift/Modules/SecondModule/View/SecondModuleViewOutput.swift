//
//  SecondModuleSecondModuleViewOutput.swift
//  ViperMCFSwift
//
//  Created by gnatok on 14/07/2016.
//  Copyright © 2016 gnatok. All rights reserved.
//

import Foundation

@objc protocol SecondModuleViewOutput {

    /**
        @author SpectralDragon
        Notify presenter that view is ready
    */

    func viewIsReady()
    
    func sendDataWasClicked()
}
