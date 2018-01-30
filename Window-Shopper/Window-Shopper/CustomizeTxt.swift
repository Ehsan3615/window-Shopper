//
//  CustomizeTxt.swift
//  Window-Shopper
//
//  Created by Sina on 1/28/18.
//  Copyright © 2018 ehsan. All rights reserved.
//

import UIKit
import Foundation

@IBDesignable
class CustomizeTxt: UITextField {

    override func draw(_ rect: CGRect) {
        let size : CGFloat = 20
        let newLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - 10, width: size, height: size))
        newLbl.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 0.8011771537)
        newLbl.textAlignment = .center
        newLbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        newLbl.layer.cornerRadius = 5.0
        newLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        newLbl.text = formatter.currencySymbol
        addSubview(newLbl)
        
        
    }
    
    
    
    override func prepareForInterfaceBuilder() {
        customizeIt()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
       customizeIt()
        
    }
    func customizeIt(){
        
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2463312922)
        
        layer.cornerRadius = 5.0
        
        
        textAlignment = .center
        textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        font = UIFont(name: "Avenir", size: 20)
        
        
        let place = NSAttributedString(string: placeholder!, attributes: [NSForegroundColorAttributeName:UIColor.white])
        
        attributedPlaceholder = place
        
        
    }
    

}
