//
//  SecondModuleSecondModuleInitializer.swift
//  ViperMCFSwift
//
//  Created by gnatok on 14/07/2016.
//  Copyright © 2016 gnatok. All rights reserved.
//

import UIKit

class SecondModuleModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var secondmoduleViewController: SecondModuleViewController!

    override func awakeFromNib() {

        let configurator = SecondModuleModuleConfigurator()
        configurator.configureModuleForViewInput(secondmoduleViewController)
    }

}
