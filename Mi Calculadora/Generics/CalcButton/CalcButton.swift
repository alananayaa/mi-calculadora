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
            styleButton = CalcButtonStyle(rawValue: style) ?? .numeral
        }
    }
    
    var styleButton: CalcButtonStyle = CalcButtonStyle.numeral {
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
            case .numeral:
                layer.backgroundColor = .calcNumeral
                tintColor = UIColor(red: 84/255, green: 84/255, blue: 84/255, alpha: 1.0)
                layer.borderColor = .borderButtonNumeral
                
            
            case .white:
                layer.backgroundColor = .calcWhite
                tintColor = UIColor(red: 105/255, green: 105/255, blue: 105/255, alpha: 1.0)
                titleLabel?.layer.shadowRadius = 4.0
                layer.borderColor = .borderButtonWhite
                
                
            case .inactiveOperation:
                layer.backgroundColor = .inactive
                tintColor = .white
                layer.borderColor = .borderButtonInactive
            
            case .activeOperation:
            layer.backgroundColor = .active
                layer.borderColor = .borderButtonActive
        }
        layer.cornerRadius = 25
        layer.shadowColor = .black
        layer.shadowOffset = CGSize(width: 4, height: 4)
        layer.shadowRadius = 4
        layer.shadowOpacity = 0.6
        titleLabel?.layer.shadowOpacity = 0.5
        titleLabel?.layer.shadowOffset = CGSize(width: 0, height: 2)
        titleLabel?.layer.shadowRadius = 4.0
        layer.borderWidth = 5
    }

}
