//
//  ViewController.swift
//  Chapter06-SQLite3
//
//  Created by Yoonjae lee on 2022/02/28.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        var db: OpaquePointer? = nil
        var stmt: OpaquePointer? = nil
//        let filedb = FileManager()
//        let docPathURL = fileMgr.urls(for: .documentDirectory, in:.userDomainMask).first!
//        let dbPath = docPathURL.appendingPathComponent("db.sqlite")?.path
        let dbPath = "/Users/yoonjae/db.sqlite"
        let sql = "CREATE TABLE IF NOT EXISTS sequence (num INTEGER)"
        if sqlite3_open(dbPath, &db) == SQLITE_OK {
            if sqlite3_prepare(db, sql, -1, &stmt, nil) == SQLITE_OK {
                if sqlite3_step(stmt) == SQLITE_DONE {
                    print("Create Table Success")
                }
                sqlite3_finalize(stmt)
            } else {
                print("Prepare Statement Fail")
            }
            sqlite3_close(db)
        } else {
            print("Datebase Connect Fail")
            return
        }
    }
}

