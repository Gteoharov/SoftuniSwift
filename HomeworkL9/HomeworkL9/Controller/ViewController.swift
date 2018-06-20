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
        RequestManager.registerUser(user: nameTextField.text!, userAge: ageTextField.text!, userPassword: passwordTextField.text!)
    }

}

