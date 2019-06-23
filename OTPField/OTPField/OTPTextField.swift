//
//  OTPTextField.swift
//  OTPField
//
//  Created by Satyenkumar Mourya on 23/06/19.
//  Copyright © 2019 Satyenkumar Mourya. All rights reserved.
//

import Foundation
import UIKit

class OTPTextField: UITextField {
    
    var previousTextField: OTPTextField?
    var nextTextField: OTPTextField?
    
    override public func deleteBackward(){
        if text == "" {
            previousTextField?.becomeFirstResponder()
        }
    }
    
}
