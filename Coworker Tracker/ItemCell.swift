//
//  Itemcell.swift
//  Coworker Tracker
//
//  Created by Jonathan Martin on 11/3/17.
//

import UIKit

class ItemCell: UITableViewCell {
    
    @IBOutlet var firstNameLabel: UILabel!
    @IBOutlet var lastNameLabel: UILabel!
    @IBOutlet var companyNameLabel: UILabel!
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var positionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        firstNameLabel.adjustsFontForContentSizeCategory = true
        lastNameLabel.adjustsFontForContentSizeCategory = true
        companyNameLabel.adjustsFontForContentSizeCategory = true
        phoneNumberLabel.adjustsFontForContentSizeCategory = true
        positionLabel.adjustsFontForContentSizeCategory = true

    }
    
}
