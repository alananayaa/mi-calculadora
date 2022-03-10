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
                layer.backgroundColor = CGColor.calcGray
            case .white:
                layer.backgroundColor = CGColor.calcWhite
                tintColor = UIColor(red: 105/255, green: 105/255, blue: 105/255, alpha: 1.0)
            case .yellow:
                layer.backgroundColor = CGColor.calcYellow
            case .activeOperation:
                layer.backgroundColor = CGColor(red: 122/255, green: 10/255, blue: 10/255, alpha: 1.0)
        }
        
        if styleButton != .white {
            tintColor = .white
        }
        layer.cornerRadius = 25
        layer.shadowColor = .white
        layer.shadowOffset = CGSize(width: 3, height: 3)
        layer.shadowRadius = 4
        layer.shadowOpacity = 0.6
    }

}
