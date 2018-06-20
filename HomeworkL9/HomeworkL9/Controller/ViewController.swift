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
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        RequestManager.sendRequest()
    }
    
    @IBAction func readButtonTapped(_ sender: UIButton) {
        RequestManager.readData()
    }
    
    @IBAction func registerButtonTapped(_ sender: UIButton) {
        guard let name = nameTextField.text else {
            return
        }
        
        guard let age = ageTextField.text else {
            return
        }
        
        guard let password = passwordTextField.text else {
            return
        }
        
        guard name.count > 0, age.count > 0, password.count > 0 else {
            print("Empty field!")
            return
        }
        
        RequestManager.registerUser(user: name, userAge: age, userPassword: password)
    }

}

