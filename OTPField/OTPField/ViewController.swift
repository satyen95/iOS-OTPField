//
//  ViewController.swift
//  OTPField
//
//  Created by Satyenkumar Mourya on 23/06/19.
//  Copyright © 2019 Satyenkumar Mourya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var otpContainerView: UIView!
    @IBOutlet weak var testButton: UIButton!
    
    let otpStackView = OTPStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testButton.isHidden = true
        otpContainerView.addSubview(otpStackView)
        otpStackView.delegate = self
        otpStackView.heightAnchor.constraint(equalTo: otpContainerView.heightAnchor).isActive = true
        otpStackView.centerXAnchor.constraint(equalTo: otpContainerView.centerXAnchor).isActive = true
        otpStackView.centerYAnchor.constraint(equalTo: otpContainerView.centerYAnchor).isActive = true
    }

    @IBAction func clickedForHighlight(_ sender: UIButton) {
        print("Final OTP : ",otpStackView.getOTP())
        otpStackView.setAllFieldColor(isWarningColor: true, color: .yellow)
    }
    
}

extension ViewController: OTPDelegate {
    
    func didChangeValidity(isValid: Bool) {
        testButton.isHidden = !isValid
    }
    
}

