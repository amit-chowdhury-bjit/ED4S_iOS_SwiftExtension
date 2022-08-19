//
//  FileManager+extension.swift
//  Reusable_framework
//
//  Created by BJIT on 17/8/22.
//

import Foundation

public enum BasePath {
    case Directory
    case Documnets
    case Library
    case Caches
    case Preferences
    case Tmp
}

public extension FileManager {
    
    
    func save(_ data: Data, savePath: String) -> Error? {
        if FileManager.default.fileExists(atPath: savePath) {
            do {
                try FileManager.default.removeItem(atPath: savePath)
            } catch let error  {
                return error
            }
        }
        do {
            try data.write(to: URL(fileURLWithPath: savePath))
        } catch let error {
            return error
        }
        return nil
    }
    
    
    func save(content: String, savePath: String) -> Error? {
        if FileManager.default.fileExists(atPath: savePath) {
            do {
                try FileManager.default.removeItem(atPath: savePath)
            } catch let error  {
                return error
            }
        }
        do {
            try content.write(to: URL(fileURLWithPath: savePath), atomically: true, encoding: .utf8)
        } catch let error {
            return error
        }
        return nil
    }
    
    @discardableResult
    func create(at path: String) -> Error? {
        if (!FileManager.default.fileExists(atPath: path)) {
            do {
                try FileManager.default.createDirectory(atPath: path, withIntermediateDirectories: true, attributes: nil)
            } catch let error {
                print("error:\(error)")
                return error
            }
        }
        return nil
    }

    @discardableResult
    func delete(at path: String) -> Error? {
        if (FileManager.default.fileExists(atPath: path)) {
            do {
                try FileManager.default.removeItem(atPath: path)
            } catch let error {
                return error
            }
            return nil
        }
        return NSError(domain: "File does not exist", code: -1, userInfo: nil) as Error
    }
    
    func rename(oldFileName: String, newFileName: String) -> Bool {
        do {
            try FileManager.default.moveItem(atPath: oldFileName, toPath: newFileName)
            return true
        } catch {
            print("error:\(error)")
            return false
        }
    }
    
     func copy(oldFileName: String, newFileName: String) -> Bool {
        do {
            try FileManager.default.copyItem(atPath: oldFileName, toPath: newFileName)
            return true
        } catch {
            return false
        }
    }
    
    var home:String {
        return NSHomeDirectory()
    }
    
     var document: String {
        get {
            return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        }
    }
    
     var library: String {
        get {
            return NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true)[0]
        }
    }
    
     var temp: String {
        get {
            return NSTemporaryDirectory()
        }
    }
    
     var caches: String {
        get {
            return NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true)[0]
        }
    }
    
    var preferences: String {
       get {
           return NSSearchPathForDirectoriesInDomains(.preferencePanesDirectory, .userDomainMask, true)[0]
       }
   }
    
}
