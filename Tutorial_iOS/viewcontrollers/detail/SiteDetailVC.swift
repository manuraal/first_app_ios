//
//  SiteDetailVC.swift
//  Tutorial_iOS
//
//  Created by Manuel on 10/02/2021.
//

import UIKit
import Alamofire

class SiteDetailVC: UIViewController {

  
    @IBOutlet weak var siteDetailTitle: UILabel!
    @IBOutlet weak var siteDetailAddress: UILabel!
    @IBOutlet weak var siteDetailDescription: UILabel!
    @IBOutlet weak var siteDetailCoord: UILabel!
    @IBOutlet weak var siteDetailTransport: UILabel!
    @IBOutlet weak var siteDetailEmail: UILabel!
    @IBOutlet weak var siteDetailPhone: UILabel!
    
    var id : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getSiteDetail()
    }
    
    func getSiteDetail(){
        let url = "http://t21services.herokuapp.com/points/" + self.id
        Alamofire.request(url).responseJSON { response in
            if let json = response.result.value as! [String:Any]? {
                let id = json["id"] as! String
                let title = json["title"] as! String
                let address = json["address"] as! String
                let transport = json["transport"] as! String
                let email = json["email"] as! String
                let geocoordinates = json["geocoordinates"] as! String
                let description = json["description"] as! String
                let phone = json["phone"] as! String

                self.siteDetailTitle.text = title.changeNullByDash()
                self.siteDetailAddress.text = address.changeNullByDash()
                self.siteDetailDescription.text = description.changeNullByDash()
                self.siteDetailCoord.text = geocoordinates.changeNullByDash()
                self.siteDetailTransport.text = transport.changeNullByDash()
                self.siteDetailEmail.text = email.changeNullByDash()
                self.siteDetailPhone.text = phone.changeNullByDash()
           }
        }
    }
    
}

extension String {
    func changeNullByDash()->String {
        let dash = "-"
        if (self == "null"){
            return dash
        } else{
            return self
        }
    }
}
