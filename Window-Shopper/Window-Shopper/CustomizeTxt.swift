//
//  CustomizeTxt.swift
//  Window-Shopper
//
//  Created by Sina on 1/28/18.
//  Copyright © 2018 ehsan. All rights reserved.
//

import UIKit
import Foundation

class CustomizeTxt: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2463312922)
        
        layer.cornerRadius = 5.0
        
        
        textAlignment = .center
        textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        font = UIFont(name: "Avenir", size: 20)
        
        
      let place = NSAttributedString(string: placeholder!, attributes: [NSForegroundColorAttributeName:UIColor.white])
        
        attributedPlaceholder = place
        
        
       
        
    }

}
