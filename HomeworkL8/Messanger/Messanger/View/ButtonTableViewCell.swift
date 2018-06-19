 //
//  ButtonTableViewCell.swift
//  Messanger
//
//  Created by Georgi Teoharov on 19.06.18.
//  Copyright © 2018 Georgi Teoharov. All rights reserved.
//

import UIKit
 
 protocol ButtonTableViewCellDelegate {
    func didTapButton(in cell: ButtonTableViewCell)
 }

class ButtonTableViewCell: UITableViewCell {

    
    var delegate: ButtonTableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func didTapButton(_ sender: UIButton) {
        self.delegate?.didTapButton(in: self)
    }
    

}
