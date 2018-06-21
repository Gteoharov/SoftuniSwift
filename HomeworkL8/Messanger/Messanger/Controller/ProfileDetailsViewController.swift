//
//  ProfileDetailsViewController.swift
//  Messanger
//
//  Created by Georgi Teoharov on 19.06.18.
//  Copyright © 2018 Georgi Teoharov. All rights reserved.
//

import UIKit
import Lottie

class ProfileDetailsViewController: UIViewController {
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var funButtonOutlet: UIButton!
    @IBOutlet weak var lottieButtonOutlet: UIButton!
    
    var image: UIImage?
    var name: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.funButtonOutlet.layer.cornerRadius = 5
        self.lottieButtonOutlet.layer.cornerRadius = 5

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let animationView = LOTAnimationView(name: "loading")
        
        self.view.addSubview(animationView)
        
        animationView.center = CGPoint(x: self.view.frame.size.width / 2, y: self.view.frame.size.height / 6.1)
        
        animationView.play(completion: { (completed) in
            animationView.removeFromSuperview()
        })
        self.nameLabel.text = name
        self.profilePicture.image = image
        self.profilePicture.layer.cornerRadius = self.profilePicture.frame.width / 2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func coolAnimationTapped(_ sender: UIButton) {
        let animationView = LOTAnimationView(name: "MotionCorpse-Jrcanest")
        
        self.view.addSubview(animationView)
        
        animationView.center = CGPoint(x: self.view.frame.size.width / 2, y: self.view.frame.size.height / 2)
        
        animationView.play(completion: { (completed) in
            animationView.removeFromSuperview()
        })
        
    }
    
    
    @IBAction func lottieButtonTapped(_ sender: UIButton) {
        let animationView = LOTAnimationView(name: "LottieLogo1_masked")
        
        self.view.addSubview(animationView)
        
        animationView.center = CGPoint(x: self.view.frame.size.width / 2, y: self.view.frame.size.height / 2)
        
        animationView.play(completion: { (completed) in
            animationView.removeFromSuperview()
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
