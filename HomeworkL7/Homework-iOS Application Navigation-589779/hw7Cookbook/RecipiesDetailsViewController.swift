//
//  RecipiesDetailsViewController.swift
//  hw7Cookbook
//
//  Created by Georgi Teoharov on 25/05/2018.
//  Copyright © 2018 Georgi Teoharov. All rights reserved.
//

import UIKit

class RecipiesDetailsViewController: UIViewController {
    @IBOutlet weak var dishImage: UIImageView!
    @IBOutlet weak var dishName: UILabel!
    @IBOutlet weak var prepTime: UILabel!
    @IBOutlet weak var descRecipeTextView: UITextView!
    
    
    
    var recept:[TypeOfData:String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dishImage.alpha = 0
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.dishImage.image = UIImage(named: self.recept?[TypeOfData.pictureOfDish] ?? "defaultDishPicture")
        self.dishName.text = self.recept?[TypeOfData.dishName] ?? "Dish name is mising"
        self.prepTime.text = self.recept?[TypeOfData.timeToCook] ?? "00:00h"
        self.descRecipeTextView.text = self.recept?[TypeOfData.recipe] ?? "no recipe yet"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.3, animations: {
            let rotation: CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation")
            rotation.toValue = Double.pi * 2
            rotation.duration = 1 // or however long you want ...
            rotation.isCumulative = true
            rotation.repeatCount = 1
            self.dishImage.layer.add(rotation, forKey: "rotationAnimation")
            self.dishImage.alpha = 1
            
        })
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
