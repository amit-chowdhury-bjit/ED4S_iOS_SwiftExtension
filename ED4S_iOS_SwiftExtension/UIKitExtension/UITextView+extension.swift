//
//  UITextView+extension.swift
//  Reusable_framework
//
//  Created by BJIT on 16/8/22.
//


import Foundation
import UIKit

extension UITextView{
    
    
    func setMinimumLineHeightAndLetterSpcae(lineHeight: CGFloat, with letterSpacing: CGFloat, and font: UIFont?) {
        let text = self.text
        if let text = text {
            let style = NSMutableParagraphStyle()
            style.minimumLineHeight = lineHeight
            style.lineBreakMode = .byTruncatingTail
            let attributes:[NSAttributedString.Key: Any] = [
                .kern: letterSpacing,
                .font:font as Any,
                .paragraphStyle:style]
            self.attributedText = NSMutableAttributedString(string: text, attributes: attributes)
        }
    }
    
}
