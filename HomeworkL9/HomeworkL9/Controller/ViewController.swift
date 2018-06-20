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
        RequestManager.readData()
        
        
        NotificationCenter.default.addObserver(forName: NSNotification.Name(rawValue: "userDataUpdated"), object: nil, queue: nil) { (notification) in
            // ⬇ actions to perform on notifiction
            
            // UI change need to happend on main thread
            DispatchQueue.main.async {
                if let username = UserDefaults.standard.string(forKey: "username") {
                    self.nameTextField.text = username
                }
                
                if let age = UserDefaults.standard.string(forKey: "age") {
                    self.ageTextField.text = age
                }
            }
        }
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
        
        UserDefaults.standard.set(name, forKey: "username")
        UserDefaults.standard.set(age, forKey: "age")
        
        
        RequestManager.registerUser(user: name, userAge: age, userPassword: password, completion: { message in
            DispatchQueue.main.async {
                let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MyViewController") as! MyViewController
                
                
                
                self.present(viewController, animated: true, completion: {
                    viewController.setupLabels(name,
                                               withAge: age,
                                               withHashedPass: password)
                })
            }
        })
    }

}

