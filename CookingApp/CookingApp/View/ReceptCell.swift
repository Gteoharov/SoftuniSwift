//
//  ReceptCell.swift
//  CookingApp
//
//  Created by Georgi Teoharov on 17.06.18.
//  Copyright © 2018 Georgi Teoharov. All rights reserved.
//

import UIKit

class ReceptCell: UITableViewCell {

    @IBOutlet weak var nameOfDish: UILabel!
    @IBOutlet weak var cookingTime: UILabel!
    @IBOutlet weak var imgOfDish: UIImageView!
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
