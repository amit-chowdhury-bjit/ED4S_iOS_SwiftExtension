//
//  Double+extension.swift
//  Reusable_framework
//
//  Created by BJIT on 17/8/22.
//

import Foundation

public extension Double {
    
    var int: Int { return Int(self) }
        
    var cgFloat: CGFloat { return CGFloat(self) }

    var int64: Int64 { return Int64(self) }
    
    var float: Float { return Float(self) }
    
    var string: String { return String(self) }
    
    var number: NSNumber { return NSNumber(value: self) }
    
    var double: Double { return self }

    func roundTo(places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }

    func toInt() -> Int {
        Int(self)
    }
    
    func toString() -> String {
        String(format: "%.02f", self)
    }

}
