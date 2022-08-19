//
//  Dictionary+extension.swift
//  Reusable_framework
//
//  Created by BJIT on 17/8/22.
//

import Foundation

public extension Dictionary {
    
    func has(_ key: Key) -> Bool {
            return index(forKey: key) != nil
        }
    
    // MARK: An array of dictionary keys or values
    func toArray<V>(_ map: (Key, Value) -> V) -> [V] {
        return self.map(map)
    }
    
    //MARK: JSON string -> dictionary
    static func jsonToDictionary(json: String) -> Dictionary<String, Any>? {
            if let data = (try? JSONSerialization.jsonObject(
                with: json.data(using: String.Encoding.utf8,allowLossyConversion: true)!,
                options: JSONSerialization.ReadingOptions.mutableContainers)) as? Dictionary<String, Any> {
                return data
            } else {
                return nil
            }
        }

    //MARK: dictionary -> JSON string
    func toJSON() -> String? {
            if let jsonData = try? JSONSerialization.data(withJSONObject: self, options: JSONSerialization.WritingOptions()) {
                let jsonStr = String(data: jsonData, encoding: String.Encoding(rawValue: String.Encoding.utf8.rawValue))
                return String(jsonStr ?? "")
            }
            return nil
        }

}
