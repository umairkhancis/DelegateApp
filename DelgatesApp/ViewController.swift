//
//  ViewController.swift
//  DelgatesApp
//
//  Created by UmairAhmed Khan on 28/03/2020.
//  Copyright © 2020 noorifytech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private var zipCodeTextField: UITextField!
    @IBOutlet private var cashTextField: UITextField!
    @IBOutlet private var lockableTextField: UITextField!
    @IBOutlet private var lockableTextFieldSwitch: UISwitch!
    
    private let zipCodeTextFieldDelegate = ZipCodeTextFieldDelegate()
    private let cashTextFieldDelegate = CashTextFieldDelegate()
    private let lockableTextFieldDelegate = LockableTextFieldDelegate()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        zipCodeTextField.delegate = self.zipCodeTextFieldDelegate
        cashTextField.delegate = self.cashTextFieldDelegate
        lockableTextField.delegate = self.lockableTextFieldDelegate
        
        lockableTextField.isEnabled = lockableTextFieldSwitch.isOn
    }
    
    @IBAction func onSwitchValueChange(_ sender: Any) {
        lockableTextField.isEnabled = lockableTextFieldSwitch.isOn
        
        lockableTextField.becomeFirstResponder()
    }
}

