//
//  ShowOfColorViewController.swift
//  HomeWork3
//
//  Created by Альбина Лега on 12/10/2022.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setColor(red: CGFloat, green: CGFloat, blue: CGFloat)
}

class MainViewController: UIViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else { return }
        settingsVC.colorOfView = view.backgroundColor
        settingsVC.delegate = self
    }
}

// MARK: - SettingsViewControllerDelegate
extension MainViewController: SettingsViewControllerDelegate {
    func setColor(red: CGFloat, green: CGFloat, blue: CGFloat) {
        view.backgroundColor = UIColor(
            red: red,
            green: green,
            blue: blue,
            alpha: 1
        )
    }
}

