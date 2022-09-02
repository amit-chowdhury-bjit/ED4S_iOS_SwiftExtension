//
//  UIViewController+extension.swift
//  EDiOSSwiftExtension
//
//  Created by BJIT on 2/9/22.
//

import UIKit

public extension UIViewController {
    
    var isModal: Bool {
        if self.presentingViewController != nil {
            return true
        } else if self.navigationController?.presentingViewController?.presentedViewController == self.navigationController  {
            return true
        } else if self.tabBarController?.presentingViewController is UITabBarController {
            return true
        }
        return false
    }
    
    /// Find a child controller of the specified type
    func findChildViewControllerOfType(_ klass: AnyClass) -> UIViewController? {
        for child in children {
            if child.isKind(of: klass) {
                return child
            }
        }
        return nil
    }
    
    // Touch View Hidden Keyboard
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
       }
       
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
       
}
