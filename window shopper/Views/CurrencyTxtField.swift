//
//  CurrencyTxtField.swift
//  window shopper
//
//  Created by Manohar Kurapati on 28/10/2017.
//  Copyright © 2017 Manosoft. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {

    //use this funciton to see the UI changes in the Interface builder screen.
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    //never call this function if it is empty. This will create performance issues
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2,
                                                width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.89227477, green: 0.89227477, blue: 0.89227477, alpha: 0.2035798373)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        
        //Always code clipToBounds = true when creating custom view for the change to take effect.
        currencyLbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        
        addSubview(currencyLbl)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2501070205)
        layer.cornerRadius = 5.0
        textAlignment = .center
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        //Always code clipToBounds = true when creating custom view for the change to take effect.
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            attributedPlaceholder = place
        }
    }

}
