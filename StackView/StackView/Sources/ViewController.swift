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
    

    override func viewDidLoad() {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextView = storyboard.instantiateInitialViewController()
        present(nextView!, animated: true, completion: nil)
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

}
 
