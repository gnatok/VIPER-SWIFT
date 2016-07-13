//
//  FisrtModuleFisrtModuleViewInput.swift
//  ViperMCFSwift
//
//  Created by SpectralDragon on 12/07/2016.
//  Copyright © 2016 gnatok. All rights reserved.
//

typealias DataResultBlock = (data: String) -> Void

protocol FisrtModuleViewInput: class {

    /**
        @author SpectralDragon
        Setup initial state of the view
    */

    func getDataWithResultBlock(resultBlock: DataResultBlock)
}
