//
//  FirstModuleInitializer.swift
//  ViperMCFSwift
//
//  Created by gnatok on 14/07/2016.
//  Copyright © 2016 gnatok. All rights reserved.
//

import UIKit

class FirstModuleModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var FirstmoduleViewController: FirstModuleViewController!

    override func awakeFromNib() {
        let configurator = FirstModuleConfigurator()
        configurator.configureModuleForViewInput(FirstmoduleViewController)
    }

}
