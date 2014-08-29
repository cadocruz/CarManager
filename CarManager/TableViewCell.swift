//
//  TableViewCell.swift
//  CarManager
//
//  Created by Ricardo Alexandre Franco da Cruz on 27/08/14.
//  Copyright (c) 2014 CruzLabs. All rights reserved.
//

import UIKit


class TableViewCell: UITableViewCell {

    @IBOutlet weak var nameCell: UILabel!
    @IBOutlet weak var makerCell: UILabel!
    @IBOutlet weak var yearCell: UILabel!
    @IBOutlet weak var valueCell: UILabel!
    @IBOutlet weak var imageCell: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
