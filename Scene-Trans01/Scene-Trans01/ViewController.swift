//
//  ViewController.swift
//  Scene-Trans01
//
//  Created by Yoonjae lee on 2022/01/31.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func moveNext(_ sender: Any) {
        let uvc = self.storyboard!.instantiateViewController(withIdentifier: "SecondVC")
        
        uvc.modalTransitionStyle = UIModalTransitionStyle.coverVertical
        
        self.present(uvc, animated: true)
    }
    
}

