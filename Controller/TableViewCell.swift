//
//  TableViewCell.swift
//  hotelesWithIos9
//
//  Created by RICARDO VALDES on 16/07/18.
//  Copyright © 2018 RICARDO VALDES. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var hotelImage: UIImageView!
    
    @IBOutlet weak var hotelName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
