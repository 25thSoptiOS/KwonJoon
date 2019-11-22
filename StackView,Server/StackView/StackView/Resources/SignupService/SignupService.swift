//
//  SignupService.swift
//  StackView
//
//  Created by JUNE on 2019/11/02.
//  Copyright © 2019 JUNE. All rights reserved.
//


import Foundation
import Alamofire

class SignupService {
    
    
    // singletone 패턴
    // 생에 주기에서 딱 한번 객체가 생성되고 전역으로 접근이 가능
    static let shared = SignupService()      // 전역 상수 진짜 로그인 let var static let 찾아보기
    
    func signup(_ id: String, _ pwd: String, _ name: String, _ phone: String,completion: @escaping (NetworkResult<Any>) -> Void) {
        
        let header : HTTPHeaders = [
            
            "Content-Type" : "application/json"
            
        ]
        
        let body : Parameters = [
            "id" : id,
            "pwd" :  pwd,
            "name": name,
            "phone" : phone
            
        ]
        
        Alamofire.request(APIConstants.SignupURL, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header)
            .responseData { response in
                
                switch response.result {
                    
                case .success :
                    if let value = response.result.value{
                        
                        if let status = response.response?.statusCode{
                            
                            
                            switch status{
                            case 200 :
                                
                                do {
                                    let decoder = JSONDecoder()
                                    let result  = try decoder.decode(ResponseString.self, from: value)
                                    
                                    switch result.success{
                                        
                                    case true:
                                        print("success")
                                        completion(.success(result.data))
                                    case false:
                                        print("failure")
                                        completion(.requesetErr(result.message))
                                    }
                                    
                                }
                                catch {
                                    completion(.pathErr)
                                    print(error.localizedDescription)
                                    print(APIConstants.SignupURL)
                                }
                            case 400:
                                completion(.pathErr)
                            case 500:
                                completion(.serverErr)
                            default:
                                break
                            }
                            
                        }
                        
                        
                    }
                case . failure(let err):
                    print(err.localizedDescription)
                    completion(.networkFail)
                    break
                }
                
        }
    }
    
}
