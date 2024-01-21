//
//  ViewController.swift
//  SliderShow
//
//  Created by Анастасия Кутняхова on 19.01.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var viewChangeColour: UIView!
    
    @IBOutlet var labelRed: UILabel!
    @IBOutlet var labelGreen: UILabel!
    @IBOutlet var labelBlue: UILabel!
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewChangeColour.layer.cornerRadius = 10
        
        // Label
        labelRed.text = "0.00"
        labelGreen.text = "0.00"
        labelBlue.text = "0.00"
        
        // Slider
        sliderRed.minimumTrackTintColor = .red
        sliderGreen.minimumTrackTintColor = .green
        sliderBlue.minimumTrackTintColor = .blue
        
        // Slider value
        sliderRed.value = 0
        sliderRed.minimumValue = 0
        sliderRed.maximumValue = 1
        
        sliderGreen.value = 0
        sliderGreen.minimumValue = 0
        sliderGreen.maximumValue = 1
        
        sliderBlue.value = 0
        sliderBlue.minimumValue = 0
        sliderBlue.maximumValue = 1
    }
    
    
    func changeColourRed() {
        viewChangeColour.backgroundColor = UIColor(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
    }
    func labelValue() {
        labelRed.text = String(sliderRed.value)
        labelGreen.text = String(sliderGreen.value)
        labelBlue.text = String(sliderBlue.value)
    }
    
    @IBAction func changedViewBaground() {
        changeColourRed()
    }
    @IBAction func changedLabelValue() {
        labelValue()
    }
}

