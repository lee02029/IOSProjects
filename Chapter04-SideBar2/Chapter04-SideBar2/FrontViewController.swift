//
//  FrontViewController.swift
//  Chapter04-SideBar2
//
//  Created by Yoonjae lee on 2022/02/16.
//

import UIKit

class FrontViewController: UIViewController {
    @IBOutlet weak var sideBarButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let reavealVC = self.revealViewController() {
            self.sideBarButton.target = reavealVC
            self.sideBarButton.action = #selector(reavealVC.revealToggle(_:))
            self.view.addGestureRecognizer(reavealVC.panGestureRecognizer())
        }
    }
}
