//
//  MessengerTableViewCell.swift
//  Messanger
//
//  Created by Georgi Teoharov on 18.06.18.
//  Copyright © 2018 Georgi Teoharov. All rights reserved.
//

import UIKit

protocol MessengerTableViewCellDelegate {
    func didTapProfilaImage(in cell: MessengerTableViewCell)
}

protocol SecoundTableViewCellDelegate {
    func didTapNameLabel(in cell: MessengerTableViewCell)
}

class MessengerTableViewCell: UITableViewCell {
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var statusImageView: UIImageView!
    
    var tapGestureRecognizer: UITapGestureRecognizer?
    var secoundTapGestureRecognizer: UITapGestureRecognizer?
    
    var delegate: MessengerTableViewCellDelegate?
    var secoundDelegate: SecoundTableViewCellDelegate?
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(tapGestureReceived))
        
        self.secoundTapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(secoundTapGestureReceived))
        
        self.profileImageView.addGestureRecognizer(tapGestureRecognizer!)
        self.nameLabel.addGestureRecognizer(secoundTapGestureRecognizer!)
        
    }
    // ⬇ If you want to move elements, change dimension.
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.profileImageView.layer.cornerRadius = self.profileImageView.frame.width / 2
        self.profileImageView.layer.borderColor = UIColor.lightGray.cgColor
        self.profileImageView.layer.borderWidth = 1.0
    }

    @objc func tapGestureReceived() {
        print("tap..")
        self.delegate?.didTapProfilaImage(in: self)
    }
    
    @objc func secoundTapGestureReceived() {
        print("name tap..")
        self.secoundDelegate?.didTapNameLabel(in: self)
    }
    

}
