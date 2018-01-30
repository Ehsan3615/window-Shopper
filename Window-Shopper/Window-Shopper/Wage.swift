//
//  Wage.swift
//  Window-Shopper
//
//  Created by Sina on 1/30/18.
//  Copyright © 2018 ehsan. All rights reserved.
//

import Foundation


class Wage {
    
    class func wage(wage: Double, price: Double) -> Int{
        
        return Int(ceil(price/wage))
        
    }
    
    
}
