//
//  ListViewController.swift
//  Chapter03-Alert
//
//  Created by Yoonjae lee on 2022/02/15.
//

import UIKit
class ListViewController: UITableViewController {
    var delegate: MapAlertViewController?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.preferredContentSize.height = 220
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel!.text = "\(indexPath.row) 번쨰 옵션입니다."
        cell.textLabel?.font = UIFont.systemFont(ofSize: 13)
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.delegate?.didSelectRowAt(indexPath: indexPath)
    }
}
