//
//  ViewController.swift
//  Scene-CustomSegue
//
//  Created by Yoonjae lee on 2022/01/31.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if(segue.identifier=="custom_segue"){
            NSLog("커스텀 세그가 실행됩니다.")
        }
        else if(segue.identifier=="action_segue"){
            NSLog("액션 로그가 실행됩니다.")
        }
        else{
            NSLog("알수 없는 로그입니다.")
        }
    }


}

