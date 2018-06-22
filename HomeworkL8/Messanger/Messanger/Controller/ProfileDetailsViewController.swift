//
//  ProfileDetailsViewController.swift
//  Messanger
//
//  Created by Georgi Teoharov on 19.06.18.
//  Copyright © 2018 Georgi Teoharov. All rights reserved.
//

import UIKit
import Lottie
import AudioToolbox

class ProfileDetailsViewController: UIViewController {
    @IBOutlet weak var profilePicture: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    @IBOutlet weak var funButtonOutlet: UIButton!
    @IBOutlet weak var lottieButtonOutlet: UIButton!
    @IBOutlet weak var reloadButtonOutlet: UIButton!
    
    var animationView = LOTAnimationView()
    var image: UIImage?
    var name: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.tapGesture))
        let tapImage = UITapGestureRecognizer(target: self, action: #selector(self.tapImageGesture))
        self.view.addGestureRecognizer(tap)
        self.profilePicture.addGestureRecognizer(tapImage)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.reloadButtonOutlet.layer.cornerRadius = 5
        self.funButtonOutlet.layer.cornerRadius = 5
        self.lottieButtonOutlet.layer.cornerRadius = 5
        animationView = LOTAnimationView(name: "loading")
        
        
        self.view.addSubview(animationView)
        
        animationView.center = CGPoint(x: self.view.frame.size.width / 2, y: self.view.frame.size.height / 6.1)
        
        animationView.play(completion: { (completed) in
            self.animationView.removeFromSuperview()
        })
        self.nameLabel.text = name
        self.profilePicture.image = image
        self.profilePicture.layer.cornerRadius = self.profilePicture.frame.width / 2
    }
    

    @objc func tapImageGesture() {
        profileImageRotate()
        AudioServicesPlayAlertSound(SystemSoundID(1519))
    }
    
    @objc func tapGesture() {
        self.view.subviews.forEach({$0.layer.removeAllAnimations()})
        self.view.layer.removeAllAnimations()
        self.view.layoutIfNeeded()
        if animationView.isAnimationPlaying {
            AudioServicesPlayAlertSound(SystemSoundID(1519))
        }
        animationView.stop()
        
    }
    
    @IBAction func coolAnimationTapped(_ sender: UIButton) {
        
        animationView = LOTAnimationView(name: "MotionCorpse-Jrcanest")
        self.view.addSubview(animationView)
        
        animationView.center = CGPoint(x: self.view.frame.size.width / 2, y: self.view.frame.size.height / 2)
        
        animationView.play(completion: { (completed) in
            self.animationView.removeFromSuperview()
        })
        
    }
    

    
    
    @IBAction func lottieButtonTapped(_ sender: UIButton) {
        animationView = LOTAnimationView(name: "LottieLogo1_masked")

        self.view.addSubview(animationView)

        animationView.center = CGPoint(x: self.view.frame.size.width / 2, y: self.view.frame.size.height / 2)

        animationView.play(completion: { (completed) in
            self.animationView.removeFromSuperview()
        })
        
    }
    
    
    
    

    @IBAction func reloadButtonTapped(_ sender: UIButton) {
        sender.transform = CGAffineTransform(scaleX: 0.6, y: 0.6)
        
        UIView.animate(withDuration: 2.0,
                       delay: 0,
                       usingSpringWithDamping: CGFloat(0.20),
                       initialSpringVelocity: CGFloat(6.0),
                       options: UIViewAnimationOptions.allowUserInteraction,
                       animations: {
                        sender.transform = CGAffineTransform.identity
        },
                       completion: { Void in()  }
        )
        self.nameLabel.text = ""
        nameLabel.animate(newText: name ?? "default data" , characterDelay: 0.1)
    }
    
    private func rotateLabel() {
        
        nameLabel.animate(newText: name ?? "default data" , characterDelay: 0.1)
        
    }
    
    private func profileImageRotate() {
        UIView.animate(withDuration: 0.3, animations: {
            let rotation: CABasicAnimation = CABasicAnimation(keyPath: "transform.rotation")
            rotation.toValue = Double.pi * 2
            rotation.duration = 1 // or however long you want ...
            rotation.isCumulative = true
            rotation.repeatCount = 1
            self.profilePicture.layer.add(rotation, forKey: "transform.rotation")
        })
    }

}

extension UILabel {
    
    func animate(newText: String, characterDelay: TimeInterval) {
        DispatchQueue.main.async {
            self.text = ""
            for (index, character) in newText.enumerated() {
                DispatchQueue.main.asyncAfter(deadline: .now() + characterDelay * Double(index)) {
                    self.text?.append(character)
                }
            }
        }
    }
    
}
