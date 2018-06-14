//
//  SettingsViewController.swift
//  Calculator
//
//  Created by Georgi Teoharov on 14.06.18.
//  Copyright © 2018 Rapid Development Crew. All rights reserved.
//

import UIKit

enum ColorName {
    case red
    case blue
    case green
}

class SettingsViewController: UIViewController {

    private var color: [SegmentColorProperty : [Float]] =
        [
            SegmentColorProperty.backroundColor : [0.5, 0.5, 0.5],
            SegmentColorProperty.tintColor : [0.5, 0.5, 0.5],
            SegmentColorProperty.textColor : [0.5, 0.5, 0.5]
        ]
    
    private var currSegment: SegmentColorProperty = .backroundColor
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func segmentMenuChoose(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            currSegment = .backroundColor
        case 1:
            currSegment = .tintColor
        case 2:
            currSegment = .textColor
        default:
            break
        }
    }
    
    @IBAction func redSlider(_ sender: UISlider) {
        
    }
    
    @IBAction func blueSlider(_ sender: UISlider) {
        
    }
    
    @IBAction func greenSlider(_ sender: UISlider) {
        
    }
    
    
    @IBAction func saveButtonPressed(_ sender: UIButton) {
        ColorData.color = self.color
    }
    
}
