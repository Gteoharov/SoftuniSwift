//
//  RecipeDetailsViewController.swift
//  CookingApp
//
//  Created by Georgi Teoharov on 17.06.18.
//  Copyright © 2018 Georgi Teoharov. All rights reserved.
//

import UIKit

class RecipeDetailsViewController: UIViewController {
    
    var dishDescriptionText: String = ""
    var timeToCookText: String = ""
    var dishImgText: String = ""
    
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
        
        self.dishImg.image = UIImage(named: dishImgText)
        self.timeToCook.text = timeToCookText
        self.dishDescription.text = dishDescriptionText
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


extension UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
        
        get{
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
        set {
            layer.borderColor = borderColor?.cgColor
        }
    }
}
