//
//  ViewController.swift
//  StackView
//
//  Created by JUNE on 2019. 10. 12..
//  Copyright © 2019년 JUNE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var LoginVC: UIStackView!
    @IBOutlet weak var stackViewCenterY: NSLayoutConstraint!
    
    @IBOutlet weak var PWtextfield: UITextField!
    @IBOutlet weak var IDtextfield: UITextField!
    
    override func viewDidLoad() {
        /*
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextView = storyboard.instantiateInitialViewController()
        present(nextView!, animated: true, completion: nil)
 */
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
   
    @IBAction func PressLogin(_ sender: Any) {
        // 로그인 서버 통신 구현 코드
            guard let id = IDtextfield.text else { return }
            guard let pwd = PWtextfield.text else { return }
            
            LoginService.shared.login(id, pwd) { // 싱글톤 받아온거
                data in
                
                switch data {
                    
                case .success(let data):
                    
                    // DataClass 에서 받은 유저 정보 반환
                    let user_data = data as! DataClass
                    
                    // 사용자의 토큰, 이름, 이메일, 전화번호 받아오기
                    // 비밀번호는 안 받아와도 됨
                    UserDefaults.standard.set(user_data.userIdx, forKey: "token")
                    UserDefaults.standard.set(user_data.name, forKey: "name")
                    UserDefaults.standard.set(user_data.phone, forKey: "phone")
                   // userdefaults 전역에서 접근할 수 있는 데이터 저장소
                    
                   let story = UIStoryboard(name: "Main2",bundle:nil)

                    let main = story.instantiateViewController(withIdentifier: "Main2")
                    
                    self.present(main, animated: true)
                    
                    
                case .requesetErr(let message):
                    print("로그인 실패" )
                    
                case .pathErr:
                    print(".pathErr")
                    
                case .serverErr:
                    print(".serverErr")
                    
                case .networkFail:
                    print( "네트워크 상태를 확인해주세요.")
                }
            }
        }
        
        
        

    }
    

 
 
