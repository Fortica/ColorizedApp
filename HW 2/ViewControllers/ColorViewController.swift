//
//  ColorViewController.swift
//  HW 2
//
//  Created by Larisa on 15.04.2021.
//  Copyright Larisa Marcinevskaya. All rights reserved.
//

import UIKit

protocol SettingViewControllerDelegate {
    func setColorView(colorValue: UIColor)
}

class ColorViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingVC = segue.destination as? SettingViewController else { return }
        settingVC.colorViewMediator = view.backgroundColor
        settingVC.delegate = self
    }
    



}

extension ColorViewController: SettingViewControllerDelegate {
    func setColorView(colorValue: UIColor) {
        view.backgroundColor = colorValue
    }
    
}
