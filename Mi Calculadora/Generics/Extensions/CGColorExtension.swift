//
//  CGColorExtension.swift
//  Mi Calculadora
//
//  Created by Alan Anaya Araujo on 19/02/22.
//

import CoreGraphics

extension CGColor {
    
    static var calcGray: CGColor {
        return CGColor(red: 226.0/255.0, green: 226.0/255.0, blue: 226.0/255.0, alpha: 1.0)
    }
    
    static var calcBlack: CGColor {
        return CGColor(red: 65.0/255.0, green: 65.0/255.0, blue: 65.0/255.0, alpha: 1.0)
    }
    
    static var white: CGColor {
        return CGColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    static var calcRed: CGColor {
        return CGColor(red: 208.0/255.0, green: 58.0/255.0, blue: 58.0/255.0, alpha: 1.0)
    }
    
    static var borderRed: CGColor {
        return CGColor(red: 129.0/255.0, green: 12.0/255.0, blue: 12.0/255.0, alpha: 1.0)
    }
    
    static var borderGray: CGColor {
        return CGColor(red: 233/255, green: 233/255, blue: 233/255, alpha: 1.0)
    }
    
    static var borderBlack: CGColor {
        return CGColor(red: 47.0/255.0, green: 47.0/255.0, blue: 47.0/255.0, alpha: 1.0)
    }
    
    static var black: CGColor {
        return CGColor(red: 0, green: 0, blue: 0, alpha: 1.0)
    }
}
