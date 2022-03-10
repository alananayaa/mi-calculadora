//
//  CGColorExtension.swift
//  Mi Calculadora
//
//  Created by Alan Anaya Araujo on 19/02/22.
//

import CoreGraphics

extension CGColor {
    
    static var calcGray: CGColor {
        return CGColor(red: 125.0/255.0, green: 125.0/255, blue: 125.0/255, alpha: 1.0)
    }
    
    static var calcWhite: CGColor {
        return CGColor(red: 226.0/255.0, green: 226.0/255.0, blue: 226.0/255.0, alpha: 1.0)
    }
    
    static var calcYellow: CGColor {
        return CGColor(red: 220.0/255.0, green: 177.0/255.0, blue: 78.0/255.0, alpha: 1.0)
    }
    
    static var white: CGColor {
        return CGColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
}
