//
//  Navigator.swift
//  Tutorial_iOS
//
//  Created by Manuel on 08/02/2021.
//

import Foundation
import UIKit

func navigateToSecondScreenVC (_ viewController: UIViewController, tab: SecondScreenVC.SecondScreenPage){
    
    //let secondScreenVC = SecondScreenVC(nibName: String(describing: SecondScreenVC.self), bundle: nil)
    let secondScreenVC = SecondScreenVC()
    secondScreenVC.selectedTab = tab
    viewController.navigationController?.pushViewController(secondScreenVC, animated: true)
}

func navigateToSiteDetailVC(_ viewController: UIViewController, title: String, coord: String){
    let siteDetailVC = SiteDetailVC()
    siteDetailVC.siteTitle = title
    siteDetailVC.siteCoord = coord
    siteDetailVC.modalPresentationStyle = .fullScreen
    viewController.navigationController?.pushViewController(siteDetailVC, animated: true)
}
