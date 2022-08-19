//
//  NSIndexPath+extension.swift
//  Reusable_framework
//
//  Created by BJIT on 17/8/22.
//

import Foundation

public extension NSIndexPath {
  
    /// {section, row}
    var sectionNRowString: String {
        return String(format: "{%d, %d}", section, row)
    }
    
    var previousRow: NSIndexPath {
        if row == 0 {
            return self
        }
        return NSIndexPath(row: self.row - 1, section: self.section)
    }
    
    var nextRow: NSIndexPath {
        return NSIndexPath(row: self.row + 1, section: self.section)
    }
}
