//
//  LoginPresenter.swift
//  Tutorial_iOS
//
//  Created by Manuel on 11/02/2021.
//

import Foundation
import UIKit

protocol LoginViewDelegate: NSObjectProtocol {
    func showInvalidCredentialsDialog()
    func navigateToList()
    func getEmail()->String
    func getPassword()->String
}

class LoginPresenter {
    private var view : LoginViewDelegate?
    
    private let rightEmail: String = "Manuel"
    private let rightPassword: String = "123"
    
    init(view: LoginViewDelegate) {
        self.view = view
    }
    
    func onLoginClicked(){
        if view?.getEmail() == rightEmail && view?.getPassword() == rightPassword {
            view?.navigateToList()
        }else{
            view?.showInvalidCredentialsDialog()
        }
    }
}
