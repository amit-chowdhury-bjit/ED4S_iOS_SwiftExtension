//
//  Int+Extension.swift
//  Reusable_framework
//
//  Created by Amit Chowdhury on 10/9/20.
//  Copyright © 2020 Archeco. All rights reserved.
//

import Foundation

public extension Int {
    func withCommas() -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        return numberFormatter.string(from: NSNumber(value:self))!
    }

    var boolValue: Bool { return self != 0 }
    
    func toDouble() -> Double {
        Double(self)
    }
    
    func toString() -> String {
        "\(self)"
    }

}

public extension Float {
    var clean: String {
       return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(format: "%.2f", self)
    }
}

public extension Double {
    func toInt() -> Int {
        Int(self)
    }
    
    func toString() -> String {
        String(format: "%.02f", self)
    }

}
