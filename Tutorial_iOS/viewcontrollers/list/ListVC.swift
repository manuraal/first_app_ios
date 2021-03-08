//
//  ListVC.swift
//  Tutorial_iOS
//
//  Created by Manuel on 08/02/2021.
//

import UIKit
import Alamofire

class ListVC: UIViewController, UITableViewDataSource  {
    
    @IBOutlet weak var sites: UITableView!
    
    var siteList : [Site] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "SiteTableViewCell", bundle: nil)
        sites.register(nib, forCellReuseIdentifier: "Site Cell")
        sites.dataSource = self
        getSites()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        siteList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = sites.dequeueReusableCell(withIdentifier: "Site Cell", for: indexPath) as! SiteTableViewCell
        cell.id = siteList[indexPath.row].id
        cell.titleSite.text = siteList[indexPath.row].title
        let coordText = String(format: "%f", siteList[indexPath.row].geocoordinates.lat) + ", " + String(format: "%f", siteList[indexPath.row].geocoordinates.lng)
        cell.coordLabel.text = coordText
        cell.delegate = self
        return cell
    }
    
    func getSites(){
        Alamofire.request("http://t21services.herokuapp.com/points").responseJSON { response in
            if let JSON = response.result.value as! [String:Any]? {
               if let jsonArray = JSON["list"] as? [[String:Any]] {
                   for json in jsonArray {
                    let id = json["id"] as! String
                    let title = json["title"] as! String
                    let geocoordinates = json["geocoordinates"] as! String
                    let coordArray = geocoordinates.split(separator: ",")
                    let location: Location = Location.init(lat: Double(coordArray[0]) ?? 0, lng: Double(coordArray[1]) ?? 0)
                    let site = Site.init(id: id, title: title, geocoordinates: location)
                    self.siteList.append(site)
                   }
                self.sites.reloadData()
               }
            }
        }
    }
}

extension ListVC: CellToDetailProtocol {
    func goToDetail(id: String) {
        navigateToSiteDetailVC(self, id: id)
    }
}
