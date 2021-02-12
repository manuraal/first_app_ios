//
//  LoginVC.swift
//  Tutorial_iOS
//
//  Created by Manuel on 08/02/2021.
//

import UIKit

class LoginVC: UIViewController, LoginViewDelegate {
    
    @IBOutlet weak var dataContainerView: UIView!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var createAccountButton: UIButton!
    
    private lazy var presenter: LoginPresenter = LoginPresenter(view: self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataContainerView.layer.borderColor = ColorHelper().greyBorderColor.cgColor
        dataContainerView.layer.borderWidth = 1
        dataContainerView.layer.cornerRadius = 5
        dataContainerView.clipsToBounds = true
        
        loginButton.round()
        createAccountButton.round()
    }
    
    private func showDialog(alertTitle: String, message: String, actionTitle:String){
        let alert = UIAlertController(title: alertTitle, message:message, preferredStyle: .alert)
        let action = UIAlertAction(title: actionTitle, style: .cancel)
        alert.addAction(action)
        self.present(alert, animated: true)
    }
    
    func showInvalidCredentialsDialog () {
        showDialog(alertTitle: "Error", message: "Introduzca las credenciales correctas", actionTitle: "Ok")
    }
    
    @IBAction func onLoginClicked(_ sender: Any) {
        presenter.onLoginClicked()
    }
    
    @IBAction func rememberPassword(_ sender: Any) {
        showDialog(alertTitle: "Aquí tienes tu contraseña", message: "\(presenter.getRightPassword())", actionTitle: "OK")
    }
    
    @IBAction func newAccount(_ sender: Any) {
        showDialog(alertTitle: "Credenciales de tu cuenta", message: "Usuario: \(presenter.getRightEmail()), contraseña: \(presenter.getRightPassword())", actionTitle: "OK")
    }
    
    func navigateToList() {
        navigateToListVC(self)
    }
    
    func getEmail() -> String {
        return emailText.text ?? ""
    }
    
    func getPassword() -> String {
        return passwordText.text ?? ""
    }
}
