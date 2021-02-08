//
//  LoginVC.swift
//  Tutorial_iOS
//
//  Created by Manuel on 08/02/2021.
//

import UIKit

class LoginVC: UIViewController {
    @IBOutlet weak var dataContainerView: UIView!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataContainerView.layer.borderColor = ColorHelper().greyBorderColor.cgColor
        dataContainerView.layer.borderWidth = 1
        dataContainerView.layer.cornerRadius = 5
        dataContainerView.clipsToBounds = true
        
        loginButton.round()
    }
}
