//
//  FirstModuleViewController.swift
//  ViperMCFSwift
//
//  Created by gnatok on 14/07/2016.
//  Copyright © 2016 gnatok. All rights reserved.
//

import UIKit

class FirstModuleViewController: UIViewController, FirstModuleViewInput {

    @IBOutlet weak var textField: UITextField!
    
    var output: FirstModuleViewOutput!
    
    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }
    
    func setupInitialState() {
    
    }


    // MARK: FirstModuleViewInput
    func getDataWithResultBlock(resultBlock: DataResultBlock) {
        resultBlock(data: textField.text!)
    }
    
    func setTextInEditField(text: String) {
        textField.text = text
    }
    
    @IBAction func didClickSendDataButton(sender: UIButton) {
        textField.resignFirstResponder()
        output.sendDataButtonClicled()
    }
    
    @IBAction func didClickInstantiateThirdModule(sender: AnyObject) {
        textField.resignFirstResponder()
        output.instantiateThirdModule()
    }
}
