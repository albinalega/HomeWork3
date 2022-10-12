//
//  ViewController.swift
//  HomeWork3
//
//  Created by Альбина Лега on 25/09/2022.
//

import UIKit

final class SettingsViewController: UIViewController { // нужно подписать под протокол
    
    // MARK: - IBOutlets
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    var colorOfView: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 15
//        colorView.backgroundColor = colorOfView
       // redSlider.value = colorOfView.
        blendColor()
        setValue()
    }
    
    //MARK: - IBActions
    @IBAction func sliderAction() {
        blendColor()
        setValue()
    }
    
//    @IBAction func unwind(for segue: UIStoryboardSegue) {
//        guard let settingsVC = segue.source as? SettingsViewController else { return }
//
//    }
    
    
    
    //MARK: - Private func
    private func blendColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func setValue() {
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
}
