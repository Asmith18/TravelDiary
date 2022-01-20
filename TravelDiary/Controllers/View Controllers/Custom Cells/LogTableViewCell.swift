//
//  LogTableViewCell.swift
//  TravelDiary
//
//  Created by adam smith on 1/20/22.
//

import UIKit

class LogTableViewCell: UITableViewCell {
    // Declaring the outlets on table view of our custom cells
    @IBOutlet weak var logNameLabel: UILabel!
    @IBOutlet weak var logAddressLabel: UILabel!
    @IBOutlet weak var logDateLabel: UILabel!
    
    func updateViews(log: Log) {
        logNameLabel.text = log.logTitle
        logAddressLabel.text = log.logAddress
        logDateLabel.text = log.logDate.stringValue()
    }
}// end of class
