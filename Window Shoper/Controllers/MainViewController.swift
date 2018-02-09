//
//  ViewController.swift
//  Window Shoper
//
//  Created by Pritom  Mazumder on 2/5/18.
//  Copyright © 2018 Pritom  Mazumder. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var wageTextField: CurrencyTextField!
    
    @IBOutlet weak var itemPriceTextField: CurrencyTextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var hoursLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        calculationButton()
    }
    
    func calculationButton(){
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        
        calcButton.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcButton.addTarget(self, action: #selector(MainViewController.calculate), for: .touchUpInside)
        
        wageTextField.inputAccessoryView = calcButton
        itemPriceTextField.inputAccessoryView = calcButton
        
        hideLabels()
    }
    
    @objc func calculate(){
        if let wageTxt = wageTextField.text, let itemPriceTxt = itemPriceTextField.text{
            if let wage = Double(wageTxt), let item = Double(itemPriceTxt){
                view.endEditing(true)
                resultLabel.isHidden = false
                hoursLabel.isHidden = false
                resultLabel.text = "\(Wage.getHours(forwage: wage, andPrice: item))"
            }
        }
    }
    
    
    @IBAction func clearButtonPressed(_ sender: Any) {
        hideLabels()
        wageTextField.text = ""
        itemPriceTextField.text = ""
    }
    
    func hideLabels(){
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
    }
    
}

