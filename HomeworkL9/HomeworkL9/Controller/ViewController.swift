//
//  ViewController.swift
//  HomeworkL9
//
//  Created by Georgi Teoharov on 20.06.18.
//  Copyright © 2018 Georgi Teoharov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func showAlertMessage(_ message: String) {
        let alertController = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "ok", style: .default) { (alertAction) in
            
        }
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        RequestManager.sendRequest()
    }
    
    @IBAction func readButtonTapped(_ sender: UIButton) {
        RequestManager.readData()
    }
    
    @IBAction func registerButtonTapped(_ sender: UIButton) {
        guard let name = nameTextField.text,
              let age = ageTextField.text,
              let password = passwordTextField.text
            else {
                self.showAlertMessage("Incorrect data")
                return
        }
        
        
        guard name.count > 0, age.count > 0, password.count > 6 else {
            self.showAlertMessage("Missing required data.")
            return
        }
        
        RequestManager.registerUser(user: name, userAge: age, userPassword: password)
    }

}

