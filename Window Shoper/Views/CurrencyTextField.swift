//
//  CurrencyTextField.swift
//  Window Shoper
//
//  Created by Pritom  Mazumder on 2/5/18.
//  Copyright © 2018 Pritom  Mazumder. All rights reserved.
//

import UIKit

@IBDesignable

class CurrencyTextField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLabel = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2)-(size/2), width: size, height: size))
        
        currencyLabel.backgroundColor = #colorLiteral(red: 0.8342385888, green: 0.8292803168, blue: 0.8380505443, alpha: 0.7180811216)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLabel.layer.cornerRadius = 5.0
        currencyLabel.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLabel.text = formatter.currencySymbol
        addSubview(currencyLabel)
        
        
    }
    
    override func prepareForInterfaceBuilder() {
        customizedView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customizedView()
    }
    
    func customizedView(){
        backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 0.2459332192)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let placeHolderVariable = placeholder{
            let place = NSAttributedString(string: placeHolderVariable, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
    

}
