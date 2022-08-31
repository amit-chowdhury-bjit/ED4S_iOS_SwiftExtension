//
//  Data+extension.swift
//  Reusable_framework
//
//  Created by BJIT on 17/8/22.
//

import Foundation

public extension Data {
    
    var encodeToData: Data? {
        return self.base64EncodedData()
    }

    var decodeToDada: Data? {
        return Data(base64Encoded: self)
    }
    
    var bytes: [UInt8] {
        return [UInt8](self)
    }

    
}
