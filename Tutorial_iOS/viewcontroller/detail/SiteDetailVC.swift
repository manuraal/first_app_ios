//
//  SiteDetailVC.swift
//  Tutorial_iOS
//
//  Created by Manuel on 10/02/2021.
//

import UIKit

class SiteDetailVC: UIViewController {

  
    @IBOutlet weak var siteDetailTitle: UILabel!
    @IBOutlet weak var siteDetailAddress: UILabel!
    @IBOutlet weak var siteDetailDescription: UILabel!
    @IBOutlet weak var siteDetailCoord: UILabel!
    @IBOutlet weak var siteDetailTransport: UILabel!
    @IBOutlet weak var siteDetailEmail: UILabel!
    @IBOutlet weak var siteDetailPhone: UILabel!
    
    var siteTitle : String = ""
    var siteCoord : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        siteDetailTitle.text = siteTitle
        siteDetailCoord.text = siteCoord
    }

}
