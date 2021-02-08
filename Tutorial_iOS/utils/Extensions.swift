//
//  Extensions.swift
//  Tutorial_iOS
//
//  Created by Manuel on 05/02/2021.
//

import Foundation
import UIKit

extension UIButton {
    func round(){
        layer.cornerRadius = 5
        clipsToBounds = true
    }
}
