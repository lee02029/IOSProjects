//
//  MemoReadVC.swift
//  MyNote
//
//  Created by Yoonjae lee on 2022/02/12.
//

import UIKit

class MemoReadVC: UIViewController {
    var param: MemoData?

    @IBOutlet weak var subject: UILabel!
    @IBOutlet weak var contents: UILabel!
    @IBOutlet weak var img: UIImageView!
    
    override func viewDidLoad() {
        self.subject.text = param?.title
        self.contents.text = param?.contents
        self.img.image = param?.image
        
        let formatter = DateFormatter()
        formatter.dateFormat = "dd일 HH:mm분에 작성됨"
        let dateString = formatter.string(from: (param?.regdate)!)
        self.navigationItem.title = dateString
    }
}
