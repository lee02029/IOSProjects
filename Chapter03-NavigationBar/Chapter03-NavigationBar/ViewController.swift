//
//  ViewController.swift
//  Chapter03-NavigationBar
//
//  Created by Yoonjae lee on 2022/02/14.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.initTitle()
    }
    
    func initTitle() {
        let nTitle = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        nTitle.numberOfLines = 2
        nTitle.textAlignment = .center
        nTitle.font = UIFont.systemFont(ofSize: 15)
        nTitle.text = "58개 숙소 \n 1박(1월 10일 ~ 1월 11일)"
        self.navigationItem.titleView = nTitle
    }
    
    


}

