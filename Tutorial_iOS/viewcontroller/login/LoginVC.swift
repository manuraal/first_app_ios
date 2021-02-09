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
    @IBOutlet weak var createAccountButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataContainerView.layer.borderColor = ColorHelper().greyBorderColor.cgColor
        dataContainerView.layer.borderWidth = 1
        dataContainerView.layer.cornerRadius = 5
        dataContainerView.clipsToBounds = true
        
        loginButton.round()
        createAccountButton.round()
    }
    
    func showAlertDialog (alertTitle: String, message: String, actionTitle: String) -> Void {
        let alert = UIAlertController(title: alertTitle, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: actionTitle, style: .cancel)
        alert.addAction(action)
        self.present(alert, animated: true)
    }
    
    @IBAction func navigateToList(_ sender: Any) {
        if emailText.text == "Manuel" && passwordText.text == "123" {
            navigateToListVC(self)
        }else{
            showAlertDialog(alertTitle: "Error", message: "Usuario o contraseña inválido", actionTitle: "OK")
            
        }
    }
    
    @IBAction func rememberPassword(_ sender: Any) {
        showAlertDialog(alertTitle: "Aquí tienes tu contraseña", message: "123", actionTitle: "OK")
    }
    
    @IBAction func newAccount(_ sender: Any) {
        showAlertDialog(alertTitle: "Credenciales de tu cuenta", message: "Usuario: Manuel, contraseña: 123", actionTitle: "OK")
    }
}
