//
//  ViewController.swift
//  Chapter03-CSStepper
//
//  Created by Yoonjae lee on 2022/02/15.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        let stepper = CSStepper()
        stepper.frame = CGRect(x: 30, y: 100, width: 130, height: 30)
        self.view.addSubview(stepper)
    }


}

