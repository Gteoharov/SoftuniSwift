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
    case green
    case blue
}

class SettingsViewController: UIViewController {
    
    
    @IBOutlet weak var saveButtonOutlet: UIButton!
    @IBOutlet weak var redSliderOutlet: UISlider!
    @IBOutlet weak var greenSliderOutlet: UISlider!
    @IBOutlet weak var blueSliderOutlet: UISlider!
    
    private var color: [SegmentColorProperty : [Float]] =
        [
            SegmentColorProperty.backroundColor : [0.5, 0.5, 0.5],
            SegmentColorProperty.tintColor : [0.5, 0.5, 0.8],
            SegmentColorProperty.textColor : [0.5, 0.5, 0.5]
        ]
    
    private var currSegment: SegmentColorProperty = .backroundColor
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setSlidersPosition()
        showCurrentColorOnTheButton()
        currSegment = .backroundColor
    }
    
    @IBAction func segmentMenuChoose(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            currSegment = .backroundColor
            setSlidersPosition()
        case 1:
            currSegment = .tintColor
            setSlidersPosition()
        case 2:
            currSegment = .textColor
            setSlidersPosition()
        default:
            break
        }
    }
    
    @IBAction func redSlider(_ sender: UISlider) {
        storeData(colorName: .red, value: sender.value)
    }
    
    @IBAction func greenSlider(_ sender: UISlider) {
        storeData(colorName: .green, value: sender.value)
    }
    
    @IBAction func blueSlider(_ sender: UISlider) {
        storeData(colorName: .blue, value: sender.value)
    }
    
    
    @IBAction func saveButtonPressed(_ sender: UIButton) {
        ColorData.color = self.color
    }
    
    func storeData(colorName: ColorName, value: Float) {
        
        switch colorName {
        case .red:
            color[currSegment]![0] = value
        case .green:
            color[currSegment]![1] = value
        case .blue:
            color[currSegment]![2] = value
        }
        showCurrentColorOnTheButton()
    }
    
    func showCurrentColorOnTheButton() {
        let red: CGFloat = CGFloat(color[currSegment]![0])
        let green: CGFloat = CGFloat(color[currSegment]![1])
        let blue: CGFloat = CGFloat(color[currSegment]![2])
        let uiColor: UIColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        
        switch currSegment {
        case .backroundColor:
            self.saveButtonOutlet.backgroundColor = uiColor
        case .tintColor:
            self.saveButtonOutlet.backgroundColor = uiColor
        case .textColor:
            self.saveButtonOutlet.backgroundColor = uiColor
        }
    }
    
    func setSlidersPosition() {
        self.redSliderOutlet.value = color[currSegment]![0]
        self.blueSliderOutlet.value = color[currSegment]![1]
        self.greenSliderOutlet.value = color[currSegment]![2]
    }
}
