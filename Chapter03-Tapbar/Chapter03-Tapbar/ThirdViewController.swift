//
//  ThirdViewController.swift
//  Chapter03-Tapbar
//
//  Created by Yoonjae lee on 2022/02/14.
//

import UIKit

class ThirdViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let title = UILabel(frame: CGRect(x: 0, y: 100, width: 100, height: 30))
        title.text = "세 번째 탭"
        title.textColor = .red
        title.textAlignment = .center
        title.font = UIFont.boldSystemFont(ofSize: 14)
        title.sizeToFit()
        title.center.x = self.view.frame.width / 2
        self.view?.addSubview(title)
        
        self.tabBarItem.image = UIImage(named: "photo.png")
        self.tabBarItem.title = "photo"
    }
    
}

