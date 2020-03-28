//
//  CashTextFieldDelegate.swift
//  DelgatesApp
//
//  Created by UmairAhmed Khan on 28/03/2020.
//  Copyright © 2020 noorifytech. All rights reserved.
//

import Foundation
import UIKit

class CashTextFieldDelegate: NSObject, UITextFieldDelegate {
    private let MAX_CHARS: Int = 5
    private let MIN_CHARS: Int = 1
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let currentText = textField.text! as NSString
        let newText = "$\(currentText.replacingCharacters(in: range, with: string))" as NSString
        
        return currentText.length >= MIN_CHARS || newText.length <= MAX_CHARS
    }
}
