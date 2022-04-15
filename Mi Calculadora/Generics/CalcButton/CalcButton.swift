//
//  CalcButton.swift
//  Mi Calculadora
//
//  Created by Alan Anaya Araujo on 19/02/22.
//

import UIKit.UIButton

@IBDesignable class CalcButton: UIButton {
    
    @IBInspectable var style: Int = 0 {
        didSet {
            styleButton = CalcButtonStyle(rawValue: style) ?? .gray
        }
    }
    
    var styleButton: CalcButtonStyle = CalcButtonStyle.gray {
        didSet {
            loadStyle()
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        loadStyle()
    }
    
    internal func loadStyle() {
        switch styleButton {
            case .gray:
                layer.backgroundColor = .calcGray
                layer.borderColor = .white
                tintColor = UIColor(red: 84/255, green: 84/255, blue: 84/255, alpha: 1)
                
            case .white:
                layer.backgroundColor = .white
                layer.borderColor = .borderGray
                tintColor = UIColor(red: 105/255, green: 105/255, blue: 105/255, alpha: 1.0)
                
            case .black:
                layer.backgroundColor = .calcBlack
                layer.borderColor = .borderBlack
                
            case .activeOperation:
                layer.backgroundColor = CGColor.calcRed
                layer.borderColor = CGColor.borderRed
                
        }
        
        if styleButton != .white {
            tintColor = .white
        }
        layer.cornerRadius = 25
        layer.shadowColor = .black
        layer.shadowOffset = CGSize(width: 4, height: 4)
        layer.shadowRadius = 4
        layer.shadowOpacity = 0.6
    }

}
