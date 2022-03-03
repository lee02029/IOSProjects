//
//  DepartmentDAO.swift
//  Chapter06-HR
//
//  Created by Yoonjae lee on 2022/03/03.
//

import UIKit
class DepartDAO {
    typealias DepartRecord = (Int,String,String)
    lazy var fmdb : FMDatabase! = {
        let fileMgr = FileManager.default
        let docPath = fileMgr.urls(for: .documentDirectory, in: .userDomainMask).first
        let dbPath = docPath!.appendingPathComponent("hr.sqlite").path
        if fileMgr.fileExists(atPath: dbPath) == false {
            let dbSource = Bundle.main.path(forResource: "hr", ofType: "sqlite")
            try! fileMgr.copyItem(atPath: dbSource!, toPath: dbPath)
        }
        let db = FMDatabase(path: dbPath)
        return db
    }()
    init() {
        self.fmdb.open()
    }
    deinit {
        self.fmdb.close()
    }
}
