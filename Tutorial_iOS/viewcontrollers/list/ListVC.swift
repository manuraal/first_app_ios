//
//  ListVC.swift
//  Tutorial_iOS
//
//  Created by Manuel on 08/02/2021.
//

import UIKit

class ListVC: UIViewController, UITableViewDataSource  {
    @IBOutlet weak var sites: UITableView!
    
    let siteList = ["Sagrada familia", "Camp nou", "La playa"]
    let coordList = ["1,3", "4,2", "5,10"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "SiteTableViewCell", bundle: nil)
        sites.register(nib, forCellReuseIdentifier: "Site Cell")
        sites.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.hidesBackButton = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationItem.hidesBackButton = false
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        siteList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = sites.dequeueReusableCell(withIdentifier: "Site Cell", for: indexPath) as! SiteTableViewCell
        cell.titleSite.text = siteList[indexPath.row]
        cell.coordLabel.text = coordList[indexPath.row]
        cell.delegate = self
        return cell
    }
}

extension ListVC: CellToDetailProtocol {
    func goToDetail(title: String, coord: String) {
        navigateToSiteDetailVC(self, title: title, coord: coord)
    }
}