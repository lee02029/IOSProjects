//
//  ListViewController.swift
//  Chapter05-UserDefaults
//
//  Created by Yoonjae lee on 2022/02/20.
//

import UIKit

class ListViewController: UITableViewController {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var gender: UISegmentedControl!
    @IBOutlet weak var married: UISwitch!
    @IBAction func edit(_ sender: Any) {
        let alert = UIAlertController(title: nil, message: "이름을 알려주세요", preferredStyle: .alert)
        
        alert.addTextField() {
            $0.text = self.name.text
        }
        
        alert.addAction(UIAlertAction(title: "OK", style: .default) { (_) in
            let value = alert.textFields?[0].text
            let plist = UserDefaults.standard
            plist.setValue(value, forKey: "name")
            plist.synchronize()
            self.name.text = value
        })
        self.present(alert,animated: false, completion: nil)
    }
    
    override func viewDidLoad() {
        let plist = UserDefaults.standard
        self.name.text = plist.string(forKey: "name")
        self.married.isOn = plist.bool(forKey: "married")
        self.gender.selectedSegmentIndex = plist.integer(forKey: "gender")
    }
    
    @IBAction func changeGender(_ sender: UISegmentedControl) {
        let value = sender.selectedSegmentIndex
        let plist = UserDefaults.standard
        plist.set(value, forKey: "gender")
        plist.synchronize()
    }
    
    @IBAction func changeMarried(_ sender: UISwitch) {
        let value = sender.isOn
        let plist = UserDefaults.standard
        plist.set(value, forKey: "married")
        plist.synchronize()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return super.tableView(tableView, numberOfRowsInSection: section)
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if indexPath.row == 0 {
//            let alert = UIAlertController(title: nil, message: "이름을 입력하세요", preferredStyle: .alert)
//            alert.addTextField() {
//                $0.text = self.name.text
//            }
//            alert.addAction(UIAlertAction(title: "OK", style: .default){ (_) in
//                let value = alert.textFields?[0].text
//                let plist = UserDefaults.standard
//                plist.setValue(value, forKey: "name")
//                plist.synchronize()
//                self.name.text = value
//            })
//            self.present(alert, animated: false, completion: nil)
//        }
    }
}
