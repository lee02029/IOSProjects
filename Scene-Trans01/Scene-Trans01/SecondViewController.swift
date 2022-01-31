//
//  SecondViewController.swift
//  Scene-Trans01
//
//  Created by Yoonjae lee on 2022/01/31.
//

import UIKit
class SecondViewController: UIViewController{
    
    @IBAction func dismiss(_ sender: Any) {
        self.presentingViewController?.dismiss(animated: true)
    }
}
