//
//  TableViewCell.swift
//  CustomtableViewcell
//
//  Created by Tuấn Anh on 02/08/2022.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var contentImage: UIImageView!
    
   
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var country: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
