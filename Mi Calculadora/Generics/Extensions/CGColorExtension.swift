//
//  CGColorExtension.swift
//  Mi Calculadora
//
//  Created by Alan Anaya Araujo on 19/02/22.
//

import CoreGraphics

extension CGColor {
    
    static var calcNumeral: CGColor {
        return CGColor(red: 226.0/255.0, green: 226.0/255, blue: 226.0/255, alpha: 1.0)
    }
    
    static var calcWhite: CGColor {
        return CGColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 1.0)
    }
    
    static var inactive: CGColor {
        return CGColor(red: 65.0/255.0, green: 65.0/255.0, blue: 65.0/255.0, alpha: 1.0)
    }
    
    static var active: CGColor {
        return CGColor(red: 208/255, green: 58/255, blue: 58/255, alpha: 1.0)
    }
    
    static var black: CGColor {
        return CGColor(red: 0, green: 0, blue: 0, alpha: 1.0)
    }
    
    static var borderButtonWhite: CGColor {
        return CGColor(red: 233/255, green: 233/255, blue: 233/255, alpha: 1)
    }
    
    static var borderButtonInactive: CGColor {
        return CGColor(red: 47/255, green: 47/255, blue: 47/255, alpha: 1)
    }
    
    static var borderButtonNumeral: CGColor {
        return CGColor(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    static var borderButtonActive: CGColor {
        return CGColor(red: 129/255, green: 12/255, blue: 12/255, alpha: 1)
    }
}
