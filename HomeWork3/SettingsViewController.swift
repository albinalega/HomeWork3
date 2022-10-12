//
//  ViewController.swift
//  HomeWork3
//
//  Created by Альбина Лега on 25/09/2022.
//

import UIKit

final class SettingsViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    var red: CGFloat!
    var green: CGFloat!
    var blue: CGFloat!
    var alpha: CGFloat!
    
    var delegate: SettingsViewControllerDelegate!
    var colorOfView: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 15
//        colorView.backgroundColor = colorOfView
        // redSlider.value
        blendColor()
        setValue()

    }
    
    //MARK: - IBActions
    @IBAction func sliderAction() {
        blendColor()
        setValue()
    }
    
    @IBAction func doneButtonePressed() {
        delegate.setColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value)
        )
        dismiss(animated: true)
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

extension UIColor {
    var red: CGFloat {
        CIColor(color: self).red
    }
    var green: CGFloat {
        CIColor(color: self).green
    }
    var blue: CGFloat {
        CIColor(color: self).blue
    }
}
