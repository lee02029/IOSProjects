//
//  TutorialContentsVC.swift
//  MyNote
//
//  Created by Yoonjae lee on 2022/02/27.
//

import UIKit
class TutorialContentsVC: UIViewController {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bgImageView: UIImageView!
    
    var pageIndex: Int!
    var titleText: String!
    var imageFile: String!
    
    override func viewDidLoad() {
        self.bgImageView.contentMode = .scaleAspectFill
        self.titleLabel.text = self.titleText
        self.titleLabel.sizeToFit()
        self.bgImageView.image = UIImage(named: self.imageFile)
    }
}
