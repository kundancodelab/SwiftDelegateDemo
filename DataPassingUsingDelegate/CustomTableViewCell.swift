//
//  CustomTableViewCell.swift
//  DataPassingUsingDelegate
//
//  Created by User on 16/09/24.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var empid: UILabel!
    
    
    @IBOutlet weak var empName: UILabel!
    
    @IBOutlet weak var empSallary: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
