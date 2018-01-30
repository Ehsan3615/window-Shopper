//
//  ViewController.swift
//  Window-Shopper
//
//  Created by Sina on 1/28/18.
//  Copyright © 2018 ehsan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceTxt: CustomizeTxt!
    @IBOutlet weak var wageTxt: CustomizeTxt!
    
    @IBOutlet weak var showResult: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
        calcBtn.addTarget(self, action: #selector(ViewController.calculate), for: .touchUpInside)
        
        priceTxt.inputAccessoryView = calcBtn
        wageTxt.inputAccessoryView = calcBtn
        
        showResult.isHidden = true
        hoursLbl.isHidden = true
        
    }


    func calculate(){
      
        guard let receivedWage = Double(wageTxt.text!), let receivedPrice = Double(priceTxt.text!) else {
        showResult.isHidden = false
            showResult.text = "Calculate :)"
        return
        }
        
       view.endEditing(true)
    
        showResult.isHidden = false
        hoursLbl.isHidden = false
        
        showResult.text = "\(Wage.wage(wage: receivedWage, price: receivedPrice))"
        
        
    }
    
    @IBAction func clearCalc(_ sender: Any) {
        showResult.isHidden = true
        hoursLbl.isHidden = true
        priceTxt.text = ""
        wageTxt.text = ""
        
        
    }
}

