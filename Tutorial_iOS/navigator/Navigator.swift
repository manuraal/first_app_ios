//
//  Navigator.swift
//  Tutorial_iOS
//
//  Created by Manuel on 08/02/2021.
//

import Foundation
import UIKit

func navigateToListVC (_ viewController: UIViewController){
    let listVC = ListVC()
    listVC.modalPresentationStyle = .fullScreen
    viewController.present(listVC, animated: true, completion: nil)
}

func navigateToSiteDetailVC(_ viewController: UIViewController, title: String, coord: String){
    let siteDetailVC = SiteDetailVC()
    siteDetailVC.siteTitle = title
    siteDetailVC.siteCoord = coord
    siteDetailVC.modalPresentationStyle = .fullScreen
    viewController.present(siteDetailVC, animated: true, completion: nil)
}
