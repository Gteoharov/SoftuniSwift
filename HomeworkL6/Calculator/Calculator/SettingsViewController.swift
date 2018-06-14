//
//  SettingsViewController.swift
//  Calculator
//
//  Created by Georgi Teoharov on 14.06.18.
//  Copyright © 2018 Rapid Development Crew. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    
    @IBOutlet weak var segment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func segmentTapped(_ sender: UISegmentedControl) {
        let getIndex = segment.selectedSegmentIndex
        
        switch getIndex {
        case 0:
            view.backgroundColor = UIColor()
        default:
                break;
        }
    }
    
    @IBAction func greenSlider(_ sender: UISlider) {
    }
    
    
    @IBAction func saveButtonPressed(_ sender: UIButton) {
    }
    
}
