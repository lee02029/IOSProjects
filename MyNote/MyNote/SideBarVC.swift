//
//  SideBarVC.swift
//  MyNote
//
//  Created by Yoonjae lee on 2022/02/17.
//

import UIKit
class SideBarVC: UITableViewController {
    let titles = ["새글 작성하기", "친구 새글", "달력으로 보기", "공지사항", "통계", "계정 관리"]
    let icons = [
    UIImage(named: "Icon01.png"),
    UIImage(named: "Icon02.png"),
    UIImage(named: "Icon03.png"),
    UIImage(named: "Icon04.png"),
    UIImage(named: "Icon05.png")
    ]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.titles.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let id = "menucell"
        let cell = tableView.dequeueReusableCell(withIdentifier: id) ?? UITableViewCell(style: .default, reuseIdentifier: id)
        
        cell.textLabel?.text = self.titles[indexPath.row]
        cell.imageView?.image = self.icons[indexPath.row]
        cell.textLabel?.font = UIFont.systemFont(ofSize: 14)
        return cell
    }
}
