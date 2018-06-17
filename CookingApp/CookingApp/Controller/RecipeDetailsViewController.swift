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
    
    var recipes:[TypeOfData:String]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dishImg.alpha = 0.3
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.dishImg.image = UIImage(named: self.recipes?[TypeOfData.pictureOfDish] ?? "defaultDishPicture")
        self.timeToCook.text = self.recipes?[TypeOfData.timeToCook] ?? "00:00 min"
        self.dishDescription.text = self.recipes?[TypeOfData.recipe] ?? "no recipe yet"
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.3, animations: {
            let rotation: CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation")
            rotation.toValue = Double.pi * 2
            rotation.duration = 1 // or however long you want ..
            rotation.isCumulative = true
            rotation.repeatCount = 1
            self.dishImg.layer.add(rotation, forKey: "transform.rotation")
            self.dishImg.alpha = 1
            
        })
    }
}
