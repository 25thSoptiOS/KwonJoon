//
//  Banner.swift
//  StackView
//
//  Created by JUNE on 2019/10/26.
//  Copyright © 2019 JUNE. All rights reserved.
//

import Foundation
import UIKit

struct Banner {
    var bannerImg: UIImage?
    
    init(bannerName: String){
        
        self.bannerImg = UIImage(named:bannerName) //initialize 자동으로 ui이미지에 넣어줌
    }
    
    
}
