//
//  ViewController.swift
//  HW#3
//
//  Created by JUNE on 2019/10/25.
//  Copyright © 2019 JUNE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    
    
    
    @IBOutlet weak var num7: UIView!
    @IBOutlet weak var num1: UIView!
    @IBOutlet weak var num9: UIView!
    @IBOutlet weak var num4: UIView!
    @IBOutlet weak var num2: UIView!
    @IBOutlet weak var num0: UIView!
    @IBOutlet weak var num8: UIView!
    @IBOutlet weak var equal: UIView!
    @IBOutlet weak var Plus: UIView!
    @IBOutlet weak var minus: UIView!
    @IBOutlet weak var div: UIView!
    @IBOutlet weak var x: UIView!
    @IBOutlet weak var num3: UIView!
    @IBOutlet weak var num5: UIView!
    @IBOutlet weak var num6: UIView!
    @IBOutlet weak var AC: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
   
        num7.layer.masksToBounds=true
        num7.layer.cornerRadius=20
        num1.layer.masksToBounds=true
        num1.layer.cornerRadius=20
        num2.layer.masksToBounds=true
        num2.layer.cornerRadius=20
        num3.layer.masksToBounds=true
        num3.layer.cornerRadius=20
        num4.layer.masksToBounds=true
        num4.layer.cornerRadius=20
        num5.layer.masksToBounds=true
        num5.layer.cornerRadius=20
        num6.layer.masksToBounds=true
        num6.layer.cornerRadius=20
        num8.layer.masksToBounds=true
        num8.layer.cornerRadius=20
        num9.layer.masksToBounds=true
        num9.layer.cornerRadius=20
        AC.layer.masksToBounds=true
        AC.layer.cornerRadius=20
        minus.layer.masksToBounds=true
        minus.layer.cornerRadius=20
        Plus.layer.masksToBounds=true
        Plus.layer.cornerRadius=20
        equal.layer.masksToBounds=true
        equal.layer.cornerRadius=20
        x.layer.masksToBounds=true
        x.layer.cornerRadius=20
        div.layer.masksToBounds=true
        div.layer.cornerRadius=20
        num0.layer.masksToBounds=true
        num0.layer.cornerRadius=20
        
    }
  

}
