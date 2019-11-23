//
//  ResponseString.swift
//  StackView
//
//  Created by JUNE on 2019/11/02.
//  Copyright © 2019 JUNE. All rights reserved.
//

import Foundation
// MARK: - ResponseString
// 성공했을 때 response body

struct ResponseString: Codable {
    let success: Bool
    let message: String
    let data: DataClass?
}

// MARK: - DataClass
struct DataClass: Codable {
    let userIdx: Int
    let id, password, name, phone: String
}

