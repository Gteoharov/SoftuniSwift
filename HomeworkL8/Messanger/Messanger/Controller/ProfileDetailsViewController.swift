//
//  ProfileDetailsViewController.swift
//  Messanger
//
//  Created by Georgi Teoharov on 19.06.18.
//  Copyright © 2018 Georgi Teoharov. All rights reserved.
//

import UIKit

class ProfileDetailsViewController: UIViewController {
    @IBOutlet weak var profilePicture: UIImageView!
    var image: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.profilePicture.image = image
        self.profilePicture.layer.cornerRadius = self.profilePicture.frame.width / 2
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
