//
//  Navigator.swift
//  Tutorial_iOS
//
//  Created by Manuel on 08/02/2021.
//

import Foundation
import UIKit

func navigateToLoginVC (_ viewController: UIViewController){
    let loginVC = LoginVC()
    loginVC.modalPresentationStyle = .fullScreen
    viewController.present(loginVC, animated: true, completion: nil)
}
