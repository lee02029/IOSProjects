//
//  NewSenceDelegate.swift
//  Chapter03-Tapbar
//
//  Created by Yoonjae lee on 2022/02/14.
//

import UIKit
class NewSceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        let tbC = UITabBarController()
        tbC.view.backgroundColor = .white
        
        self.window?.rootViewController = tbC
        
        let view01 = ViewController()
        let view02 = SecondViewController()
        let view03 = ThirdViewController()
        tbC.setViewControllers([view01, view02, view03], animated: false)
        
        view01.tabBarItem = UITabBarItem(title: "Calendar", image: UIImage(named: "calendar"), selectedImage: nil)
        view02.tabBarItem = UITabBarItem(title: "File", image: UIImage(named: "file-tree"), selectedImage: nil)
        view03.tabBarItem = UITabBarItem(title: "Photo", image: UIImage(named: "photo"), selectedImage: nil)
    }
}
