//
//  ListVC.swift
//  Tutorial_iOS
//
//  Created by Manuel on 08/02/2021.
//

import UIKit

class ListVC: UIViewController, UITableViewDataSource  {
    @IBOutlet weak var sites: UITableView!
    
    private let sitesCellIdentifier = String(describing: ListCell.self)
    private let refreshControl = UIRefreshControl()
    private var sitesList: [Site.instance] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        sites.dataSource = self
        sites.register(UINib(nibName: sitesCellIdentifier, bundle: nil), forCellReuseIdentifier: sitesCellIdentifier)
        sites.addSubview(refreshControl)
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}
