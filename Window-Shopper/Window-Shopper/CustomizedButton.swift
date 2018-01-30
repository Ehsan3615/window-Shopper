//
//  CustomizedButton.swift
//  Window-Shopper
//
//  Created by Sina on 1/30/18.
//  Copyright © 2018 ehsan. All rights reserved.
//

import UIKit

class CustomizedButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 4.0
        layer.borderColor = UIColor.black.cgColor
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.495275549)
        
        
    }

}
