//
//  TableViewCell.swift
//  SideMenu
//
//  Created by avinash on 05/01/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet var img : UIImageView!
    @IBOutlet var lbltitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
