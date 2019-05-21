//
//  MenuButton.swift
//  Fifty States
//
//  Created by Eric Snow on 4/25/19.
//  Copyright © 2019 Eric Snow. All rights reserved.
//

import UIKit

class MenuButton: UIButton {
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = 10
        layer.masksToBounds = true
        layer.borderWidth = 3
        layer.borderColor = UIColor.white.cgColor
        backgroundColor = UIColor.red
    }
    
    
    
    
    
}








