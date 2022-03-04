//
//  EmployeeDAO.swift
//  Chapter06-HR
//
//  Created by Yoonjae lee on 2022/03/04.
//

import UIKit

enum EmpStateType: Int {
    case ING = 0, STOP, OUT
    func desc() -> String {
        switch self {
        case .ING:
            return "재직중"
        case .STOP:
            return "휴직"
        case .OUT:
            return "퇴사"
        }
    }
    struct EmployeeVO {
        var empCd = 0
        var empName = ""
        var joinDate = ""
        var stateCd = EmpStateType.ING
        var departCd = 0
        var departTitle = ""
    }
}
