//
//  Device+extension.swift
//  Reusable_framework
//
//  Created by BJIT on 17/8/22.
//

import Foundation
import UIKit

public enum DeviceModel: CaseIterable {

    case iPhone4, iPhone4S
    case iPhone5, iPhone5C, iPhone5S
    case iPhone6, iPhone6Plus
    case iPhone6S, iPhone6SPlus
    case iPhoneSE, iPhoneSE2, iPhoneSE3
    case iPhone7, iPhone7Plus
    case iPhone8, iPhone8Plus
    case iPhoneX
    case iPhoneXS, iPhoneXSMax
    case iPhoneXR
    case iPhone11
    case iPhone11Pro, iPhone11ProMax
    case iPhone12mini, iPhone12
    case iPhone12Pro, iPhone12ProMax
    case iPhone13mini, iPhone13
    case iPhone13Pro, iPhone13ProMax

    case iPadFirstGen, iPadSecondGen, iPadThirdGen, iPadFourthGen, iPadFifthGen, iPadSixthGen, iPadSeventhGen, iPadEighthGen, iPadNinthGen

    case iPadAir, iPadAir2, iPadAir3, iPadAir4, iPadAir5

    case iPadMini, iPadMini2, iPadMini3, iPadMini4, iPadMini5, iPadMini6

    case iPadPro9_7Inch, iPadPro10_5Inch, iPadPro12_9Inch, iPadPro12_9Inch_SecondGen
    
    case iPadPro11Inch, iPadPro12_9Inch_ThirdGen
    
    case iPadPro11Inch_SecondGen, iPadPro12_9Inch_FourthGen
    
    case iPadPro11Inch_ThirdGen, iPadPro12_9Inch_FifthGen

    case iPodTouchFirstGen, iPodTouchSecondGen, iPodTouchThirdGen,
         iPodTouchFourthGen, iPodTouchFifthGen, iPodTouchSixthGen, iPodTouchSeventhGen

    case unknown
}


public extension UIDevice {
    
    static func isIphone() -> Bool {
            return UIDevice.current.userInterfaceIdiom == .phone
        }
    
    static func isPadDevice() -> Bool {
            return UIDevice.current.userInterfaceIdiom == .pad
        }
    
    static var deviceType: String {
            return UIDevice.current.model
        }
    
    static var currentSystemName : String {
            get {
                return UIDevice.current.systemName
            }
        }
    
    static var currentDeviceName : String {
            get {
                return UIDevice.current.name
            }
        }
    
    static var diskSpace: Int64 {
            if let attrs = try? FileManager.default.attributesOfFileSystem(forPath: NSHomeDirectory()) {
                if let space: NSNumber = attrs[FileAttributeKey.systemSize] as? NSNumber {
                    if space.int64Value > 0 {
                        return space.int64Value
                    }
                }
            }
            return -1
        }
    
    static var diskSpaceFree: Int64 {
            if let attrs = try? FileManager.default.attributesOfFileSystem(forPath: NSHomeDirectory()) {
                if let space: NSNumber = attrs[FileAttributeKey.systemFreeSize] as? NSNumber {
                    if space.int64Value > 0 {
                        return space.int64Value
                    }
                }
            }
            return -1
        }
    
    static var diskSpaceUsed: Int64 {
        let total = self.diskSpace
        let free = self.diskSpaceFree
        guard total > 0 && free > 0 else { return -1 }
        let used = total - free
        guard used > 0 else { return -1 }
        
        return used
    }
    
    static var memoryTotal: UInt64 {
        return ProcessInfo.processInfo.physicalMemory
    }

    static func isCanCallTel() -> Bool {
        if let url = URL(string: "tel://") {
            return UIApplication.shared.canOpenURL(url)
        }
        return false
    }

    static var deviceLanguage: String {
            return Bundle.main.preferredLocalizations[0]
    }
    
    

}
