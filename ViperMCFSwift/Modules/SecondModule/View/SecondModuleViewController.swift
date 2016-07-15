//
//  SecondModuleSecondModuleViewController.swift
//  ViperMCFSwift
//
//  Created by gnatok on 14/07/2016.
//  Copyright © 2016 gnatok. All rights reserved.
//

import UIKit
import ViperMcFlurry

class SecondModuleViewController: UIViewController, SecondModuleViewInput {

    @IBOutlet weak var exampleStringLabel: UILabel!
    
    var output: SecondModuleViewOutput!

    @IBAction func sendDataButtonDidClick(sender: AnyObject) {
        output.sendDataWasClicked()
    }
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }

    // MARK: SecondModuleViewInput
    func setExampleString(data: String) {
        exampleStringLabel.text = data
    }
}
