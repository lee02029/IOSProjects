//
//  DepartmentDAO.swift
//  Chapter06-HR
//
//  Created by Yoonjae lee on 2022/03/03.
//

import UIKit
class DepartmentDAO : UITableViewController{
    var departList: [(departCd: Int, departTitle:String, departAddr: String)]!
    let departDAO = DepartmentDAO()
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
    
    func find() -> [DepartRecord] {
        var departList = [DepartRecord]()
        do {
            let sql = """
            SELCET depart_cd, depart_title, depart_addr
            FROM department
            ORDER BY depart_cd ASC
          """
            let rs = try self.fmdb.executeQuery(sql, values: nil)
            while rs.next() {
                let departCd = rs.int(forColumn: "depart_cd")
                let departTitle = rs.string(forColumn: "depart_title")
                let departAddr = rs.string(forColumn: "depart_addr")
                departList.append((Int(departCd), departTitle!, departAddr!))
            }
        } catch let error as NSError {
            print("failed: \(error.localizedDescription)")
        }
        return departList
    }
    
    func get(departCd: Int) -> DepartRecord? {
        let sql = """
            SELCET depart_cd, depart_title, depart_addr
            FROM department
            WHERE depart_cd = ?
          """
        let rs = self.fmdb.executeQuery(sql, withArgumentsIn: [departCd])
        if let _rs = rs {
            _rs.next()
            let departId = _rs.int(forColumn: "depart_cd")
            let departTitle = _rs.string(forColumn: "depart_title")
            let departAddr = _rs.string(forColumn: "depart_addr")
            return (Int(departId), departTitle!, departAddr!)
        } else {
            return nil
        }
    }
    
    func create(title: String!, addr: String!) -> Bool {
        do {
            let sql = """
                INSERT INTO department (depart_title, depart_addr)
                VALUES(?,?)
            """
            try self.fmdb.executeQuery(sql, values: [title!,addr!])
            return true
        } catch let error as NSError {
            print("Insert Error :\(error.localizedDescription)")
            return false
        }
    }
    
    func initUI() {
        let navTitle = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 60))
        navTitle.numberOfLines = 2
        navTitle.textAlignment = .center
        navTitle.font = UIFont.systemFont(ofSize: 14)
        navTitle.text = "부서 목록 \n" + "총 \(self.departList.count) 개"
    }
}
