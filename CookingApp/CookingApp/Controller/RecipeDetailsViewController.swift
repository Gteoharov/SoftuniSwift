//
//  RecipeDetailsViewController.swift
//  CookingApp
//
//  Created by Georgi Teoharov on 17.06.18.
//  Copyright © 2018 Georgi Teoharov. All rights reserved.
//

import UIKit

class RecipeDetailsViewController: UIViewController {
    
    @IBOutlet weak var dishImg: UIImageView!
    @IBOutlet weak var timeToCook: UILabel!
    @IBOutlet weak var dishDescription: UITextView!
    
    var recept:[TypeOfData:String]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dishImg.alpha = 0
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.dishImg.image = UIImage(named: self.recept?[TypeOfData.pictureOfDish] ?? "defaultDishPicture")
        self.timeToCook.text = self.recept?[TypeOfData.timeToCook] ?? "00:00 min"
        self.dishDescription.text = self.recept?[TypeOfData.recipe] ?? "no recipe yet"
    }
}
