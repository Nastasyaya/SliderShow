//
//  ViewController.swift
//  SliderShow
//
//  Created by Анастасия Кутняхова on 19.01.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colourView: UIView!

    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!

    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()

        colourView.layer.cornerRadius = 10

        // Labels
        redLabel.text = "0.00"
        greenLabel.text = "0.00"
        blueLabel.text = "0.00"

        // Sliders
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue

        // Sliders value
        redSlider.value = 0
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1

        greenSlider.value = 0
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1

        blueSlider.value = 0
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
    }

    private func changeColour() {
        colourView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    private func installLabelValues() {
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }

    @IBAction func changeViewBackround() {
        changeColour()
    }
    @IBAction func changeLabelValue() {
        installLabelValues()
    }
}
