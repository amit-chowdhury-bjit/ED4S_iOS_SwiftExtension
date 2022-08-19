//
//  Array+extension.swift
//  Reusable_framework
//
//  Created by BJIT on 12/8/22.
//

import Foundation

extension Array {
    subscript (safe index: Int) -> Element? {
        guard index >= 0 && index < self.count else {
            return nil
        }
        return self[index]
    }
}
