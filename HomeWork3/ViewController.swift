//
//  ViewController.swift
//  HomeWork3
//
//  Created by Альбина Лега on 25/09/2022.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var screenWithColor: UIView!
    
    @IBOutlet var redOpacityLevel: UILabel!
    @IBOutlet var greenOpacityLevel: UILabel!
    @IBOutlet var blueOpacityLevel: UILabel!
    
    @IBOutlet var redColorSlider: UISlider!
    @IBOutlet var greenColorSlider: UISlider!
    @IBOutlet var blueColorSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        screenWithColor.layer.cornerRadius = 10
        setupOpacityLevel()
    }
    
    //MARK: - IBActions
    @IBAction func redSliderAction() {
        redColorSlider.value = round(redColorSlider.value * 100) / 100
        redOpacityLevel.text = redColorSlider.value.formatted()
        screenWithColor.backgroundColor = .red
        screenWithColor.alpha = CGFloat(redColorSlider.value)
        blendColor()
    }
    
    @IBAction func greenSliderAction() {
        greenColorSlider.value = round(greenColorSlider.value * 100) / 100
        greenOpacityLevel.text = greenColorSlider.value.formatted()
        screenWithColor.backgroundColor = .green
        screenWithColor.alpha = CGFloat(greenColorSlider.value)
        blendColor()
    }
    
    @IBAction func blueSliderAction() {
        blueColorSlider.value = round(blueColorSlider.value * 100) / 100
        blueOpacityLevel.text = blueColorSlider.value.formatted()
        screenWithColor.backgroundColor = .blue
        screenWithColor.alpha = CGFloat(blueColorSlider.value)
        blendColor()
    }
    
    //MARK: - Private func
    private func blendColor() {
        screenWithColor.backgroundColor = UIColor(
            red: CGFloat(redColorSlider.value),
            green: CGFloat(greenColorSlider.value),
            blue: CGFloat(blueColorSlider.value),
            alpha: 1
        )
    }
    
    private func setupOpacityLevel() {
        redOpacityLevel.text = redColorSlider.value.formatted()
        greenOpacityLevel.text = greenColorSlider.value.formatted()
        blueOpacityLevel.text = blueColorSlider.value.formatted()
    }
    
}
