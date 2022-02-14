//
//  ViewController.swift
//  Chapter03-Tapbar
//
//  Created by Yoonjae lee on 2022/02/14.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let title = UILabel(frame: CGRect(x: 0, y: 100, width: 100, height: 30))
        
        title.text = "첫번째 탭"
        title.textColor = .red
        title.textAlignment = .center
        title.font = UIFont.boldSystemFont(ofSize: 14)
        title.sizeToFit()
        title.center.x = self.view.frame.width / 2
        self.view.addSubview(title)
        
        self.tabBarItem.image = UIImage(named: "calendar.png")
        self.tabBarItem.title = "Calendar"
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let tabBar = self.tabBarController?.tabBar
//        tabBar?.isHidden = (tabBar?.isHidden == true) ? false : true
        UIView.animate(withDuration: TimeInterval(0.15)) {
            tabBar?.alpha = (tabBar?.alpha == 0 ? 1 : 0)
        }
    }


}

