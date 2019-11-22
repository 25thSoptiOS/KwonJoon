//
//  APIServices.swift
//  StackView
//
//  Created by JUNE on 2019/11/02.
//  Copyright © 2019 JUNE. All rights reserved.
//

import Foundation


enum NetworkResult<T>{
    case success(T)
    case requesetErr(T)
    case pathErr
    case serverErr
    case networkFail // 경로가 잘못됐구나 뭐가 잘못됐구나 뭐가 잘못됐구나
}
