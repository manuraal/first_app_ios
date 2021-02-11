//
//  SiteTableViewCell.swift
//  Tutorial_iOS
//
//  Created by Manuel on 08/02/2021.
//

import UIKit

class SiteTableViewCell: UITableViewCell {

    @IBOutlet weak var coordLabel: UILabel!
    @IBOutlet weak var titleSite: UILabel!
    
    var delegate: CellToDetailProtocol?
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    @IBAction func navigateToDetail(_ sender: Any) {
        self.delegate?.goToDetail(title: titleSite.text ?? "", coord: coordLabel.text ?? "")
    }
}

protocol CellToDetailProtocol: AnyObject {
    func goToDetail(title: String, coord: String)
}
