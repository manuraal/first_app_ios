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
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
