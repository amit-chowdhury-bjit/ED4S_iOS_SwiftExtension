//
//  UIScrollView+extension.swift
//  Reusable_framework
//
//  Created by BJIT on 16/8/22.
//

import UIKit
import Foundation

public extension UIScrollView {
    
    ///  YES if the scrollView's offset is at the very top.
    var isAtTop: Bool {
        get { return self.contentOffset.y == 0.0 ? true : false }
    }
    
    ///  YES if the scrollView's offset is at the very bottom.
    var isAtBottom: Bool {
        get {
            let bottomOffset = self.contentSize.height - self.bounds.size.height
            return self.contentOffset.y == bottomOffset ? true : false
        }
    }

    ///  YES if the scrollView can scroll from it's current offset position to the bottom.
        var canScrollToBottom: Bool {
            get { return self.contentSize.height > self.bounds.size.height ? true : false }
        }
}

