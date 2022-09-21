//
//  KhachHangTableViewCell.swift
//  DemoTableView
//
//  Created by Tuấn Anh on 20/09/2022.
//

import UIKit

class KhachHangTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var genDer: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }

    
}
