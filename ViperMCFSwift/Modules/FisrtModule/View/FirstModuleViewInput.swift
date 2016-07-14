//
//  FirstModuleViewInput.swift
//  ViperMCFSwift
//
//  Created by gnatok on 14/07/2016.
//  Copyright © 2016 gnatok. All rights reserved.
//

typealias DataResultBlock = (data: String) -> Void

protocol FirstModuleViewInput: class {
    func getDataWithResultBlock(resultBlock: DataResultBlock)
    func setupInitialState()
}
