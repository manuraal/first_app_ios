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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
