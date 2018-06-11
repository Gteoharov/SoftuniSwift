//
//  ReceptTableViewCell.swift
//  hw7Cookbook
//
//  Created by Georgi Teoharov on 24/05/2018.
//  Copyright © 2018 Georgi Teoharov. All rights reserved.
//

import UIKit

class ReceptTableViewCell: UITableViewCell {
    @IBOutlet weak var nameOfDish: UILabel!
    @IBOutlet weak var prepTime: UILabel!
    @IBOutlet weak var descRecept: UILabel!
    @IBOutlet weak var imageOfDish: UIImageView!
    @IBOutlet weak var starButton: UIButton!
    var favorite: Int = 0
    var indexPathRow: Int?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBAction func starButtonPressed(_ sender: UIButton) {
        if favorite == 2 {
            favorite = 0
        } else {
            favorite = favorite + 1
        }
        RecipiesData.recipies[indexPathRow!][.favorite] = self.favorite.description
        showAFavoriteStar()
    }
    
    func showAFavoriteStar() {
        switch self.favorite {
        case 1: //like it
            self.starButton.setTitle("☆", for: .normal)
            self.starButton.setTitleColor(UIColor.orange, for: .normal)
        case 2: //love it
            self.starButton.setTitle("★", for: .normal)
            self.starButton.setTitleColor(UIColor.orange, for: .normal)
        case nil, 0:
            self.starButton.setTitle("☆", for: .normal)
            self.starButton.setTitleColor(self.tintColor, for: .normal)
        default:
            return
        }
//        guard indexPathRow != nil else {
//            return
//        }
       // RecipiesData.recipies[indexPathRow!][.favorite] = self.favorite.description
    }
}
