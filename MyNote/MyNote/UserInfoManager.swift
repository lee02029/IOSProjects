//
//  UserInfoManager.swift
//  MyNote
//
//  Created by Yoonjae lee on 2022/02/25.
//

import UIKit

struct UserInfoKey {
    static let loginId = "LoginId"
    static let account = "ACCOUNT"
    static let name = "NAME"
    static let profile = "PROFILE"
}

class UserInfoManager {
    var loginId: Int {
        get {
            return UserDefaults.standard.integer(forKey: UserInfoKey.loginId)
        }
        set(v) {
            let ud = UserDefaults.standard
            ud.set(v,forKey: UserInfoKey.loginId)
            ud.synchronize()
        }
    }
    var account: String? {
        get {
            return UserDefaults.standard.string(forKey: UserInfoKey.account)
        }
        set(v) {
            let ud = UserDefaults.standard
            ud.set(v,forKey: UserInfoKey.account)
            ud.synchronize()
        }
    }
    var name: String? {
        get {
            return UserDefaults.standard.string(forKey: UserInfoKey.name)
        }
        set(v) {
            let ud = UserDefaults.standard
            ud.set(v,forKey: UserInfoKey.name)
            ud.synchronize()
        }
    }
    var profile: UIImage? {
        get {
            let ud = UserDefaults.standard
            if let _profile = ud.data(forKey: UserInfoKey.profile) {
                return UIImage(data: _profile)
            } else {
                return UIImage(named: "account.jpg")
            }
        }
        set(v) {
            if v != nil {
                let ud = UserDefaults.standard
                ud.set(v!.pngData(),forKey: UserInfoKey.profile)
                ud.synchronize()
            }
        }
    }
    var isLogin: Bool {
        if self.loginId == 0 || self.account == nil {
            return false
        } else {
            return true
        }
    }
    func login(account: String, passwd: String) -> Bool {
        if account.isEqual("kkang47140@gmail.com") && passwd.isEqual("1234") {
            let ud = UserDefaults.standard
            ud.set(100, forKey: UserInfoKey.loginId)
            ud.set(account,forKey: UserInfoKey.account)
            ud.set("이윤재", forKey: UserInfoKey.name)
            ud .synchronize()
            return true
        } else {
            return false
        }
    }
    func logout() -> Bool {
        let ud = UserDefaults.standard
        ud.removeObject(forKey: UserInfoKey.loginId)
        ud.removeObject(forKey: UserInfoKey.account)
        ud.removeObject(forKey: UserInfoKey.name)
        ud.removeObject(forKey: UserInfoKey.profile)
        ud.synchronize()
        return true
    }
}


