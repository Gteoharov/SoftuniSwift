//
//  MessengerTableViewController.swift
//  Messanger
//
//  Created by Georgi Teoharov on 18.06.18.
//  Copyright © 2018 Georgi Teoharov. All rights reserved.
//

import UIKit
import SVProgressHUD


class MessengerTableViewController: UITableViewController, ButtonTableViewCellDelegate, MessengerTableViewCellDelegate, SecoundTableViewCellDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.rowHeight = 70.0
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let numberOfRowInSection = DataMessenger.profiles.count
        return numberOfRowInSection + 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == DataMessenger.profiles.count {
            let cell = tableView.dequeueReusableCell(withIdentifier: "buttonCellIdentificator", for: indexPath) as! ButtonTableViewCell
            
            cell.delegate = self
            
            return cell
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "messengerCellIdentifier", for: indexPath) as! MessengerTableViewCell
        
        cell.nameLabel.text = DataMessenger.profiles[indexPath.row][.name]
        cell.timeLabel.text = DataMessenger.profiles[indexPath.row][.time]
        cell.messageLabel.text = DataMessenger.profiles[indexPath.row][.lastMessage]
        cell.profileImageView.image = UIImage(named: DataMessenger.profiles[indexPath.row][.profileImage]!)
        
        cell.delegate = self
        cell.secoundDelegate = self
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

    func didTapProfilaImage(in cell: MessengerTableViewCell) {
        let profileDetailsViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ProfileDetailsViewController") as! ProfileDetailsViewController

        profileDetailsViewController.image = cell.profileImageView.image!
        self.navigationController?.pushViewController(profileDetailsViewController, animated: true)
    }
    
    func didTapNameLabel(in cell: MessengerTableViewCell) {
        if cell.profileImageView.layer.borderWidth == 1.0 {
            cell.profileImageView.layer.borderWidth = 2.0
        } else {
            cell.profileImageView.layer.borderWidth = 1.0
        }
        
        switch SVProgressHUD.isVisible() {
        case true:
            SVProgressHUD.dismiss()
        case false:
            SVProgressHUD.show()
        }
    }
    
    func didTapButton(in cell: ButtonTableViewCell) {
        let randomNumber = CGFloat(arc4random() % 100) / 100.00
        cell.contentView .backgroundColor = UIColor.purple.withAlphaComponent(randomNumber)
    }
    
    
}
