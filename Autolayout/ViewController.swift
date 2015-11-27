//
//  ViewController.swift
//  Autolayout
//
//  Created by Rafael Martins on 25/11/15.
//  Copyright (c) 2015 Rafael Martins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        updateUI()
        
    }
    
    var secure = false { didSet{ updateUI() } }
    
    private func updateUI() {
        passwordField.secureTextEntry = secure
        passwordLabel.text = secure ? "Secured Password" : "Password"
    }
    
    @IBAction func changeSecurity(sender: UIButton) {
        secure = !secure
    }
    
    @IBAction func login() {
    }
}