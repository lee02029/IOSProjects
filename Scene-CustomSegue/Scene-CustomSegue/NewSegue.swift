//
//  NewSegue.swift
//  Scene-CustomSegue
//
//  Created by Yoonjae lee on 2022/01/31.
//

import UIKit
class NewSegue: UIStoryboardSegue {
    override func perform() {
        let scrUVC = self.source
        let destUVC = self.destination
        UIView.transition(from: scrUVC.view, to: destUVC.view, duration: 2, options: .transitionCurlDown)
    }
}
