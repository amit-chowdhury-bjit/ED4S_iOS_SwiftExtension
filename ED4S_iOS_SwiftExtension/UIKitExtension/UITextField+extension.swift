//
//  TextField.swift
//  Reusable_framework
//
//  Created by BJIT on 16/8/22.
//


import UIKit
import Foundation

extension UITextField {

    func addLeftTextPadding(_ padding: CGFloat) {
            let leftView = UIView()
            leftView.frame = CGRect(x: 0, y: 0, width: padding, height: self.frame.height)
            self.leftView = leftView
            self.leftViewMode = UITextField.ViewMode.always
    }
    
    func setRightPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }

//    func isValidEmail(_ email: String) -> Bool {
//        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
//        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
//        return emailPred.evaluate(with: email)
//    }
    
    func addLeftIcon(_ image: UIImage?, leftViewFrame: CGRect, imageSize: CGSize) {
            let leftView = UIView()
            leftView.frame = leftViewFrame
            let imgageView = UIImageView()
            imgageView.frame = CGRect(x: leftViewFrame.width - 8 - imageSize.width, y: (leftViewFrame.height - imageSize.height) / 2, width: imageSize.width, height: imageSize.height)
            imgageView.image = image
            leftView.addSubview(imgageView)
            self.leftView = leftView
            self.leftViewMode = UITextField.ViewMode.always
        }
    
    func validateDigits() -> Bool {
           let digitsRegEx = "[0-9]*"
           let digitsTest = NSPredicate(format: "SELF MATCHES %@", digitsRegEx)
           return digitsTest.evaluate(with: self.text)
       }

    func validatePassword(password: String?) -> Bool? {
        let minimumNumberOfCharacterInPassword = 8
        var isPasswordValid = true
        if let txt = password {
//            if (txt.rangeOfCharacter(from: CharacterSet.uppercaseLetters) == nil) {
//                isPasswordValid = false
//            }
            if (txt.rangeOfCharacter(from: CharacterSet.lowercaseLetters) == nil) {
                isPasswordValid = false
            }
            if (txt.rangeOfCharacter(from: CharacterSet.decimalDigits) == nil) {
                isPasswordValid = false
            }
            if txt.count < minimumNumberOfCharacterInPassword {
                isPasswordValid = false
            }
        }
        return isPasswordValid
    }

    func validSearchKeyword(searchKey: String?)->Bool?{

        if let txt = searchKey {
            let characterSet = CharacterSet.letters
            if (txt.rangeOfCharacter(from: characterSet.inverted) != nil) {
                return true
            }
        }
        return true
    }

    func removeWhitespacesAndNewLines(text: String?)-> String?{
        return text!.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    }

    func setShowAndHideButton(){
        let widthOrHeightOfImage: CGFloat = 50
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "hidePassword"), for: .normal)
        button.imageEdgeInsets = UIEdgeInsets(top: CGFloat.zero, left: CGFloat.zero, bottom: CGFloat.zero, right: CGFloat.zero)
        button.frame = CGRect(x: CGFloat(self.frame.size.width - widthOrHeightOfImage), y: CGFloat(CGFloat.zero), width: CGFloat(widthOrHeightOfImage), height: CGFloat(widthOrHeightOfImage))
        self.isSecureTextEntry = true
        button.addTarget(self, action: #selector(self.showOrHide), for: .touchUpInside)
        self.rightView = button
        self.rightViewMode = .always
        self.autocorrectionType = .no
        self.keyboardType = .asciiCapable;
    }

    @objc func showOrHide(){
        if self.isSecureTextEntry{
            let button = self.rightView as! UIButton
            button.setImage(UIImage(named: "showPassword"), for: .normal)
            self.isSecureTextEntry = false
            self.text = self.text! + " "
            let trimmedString = self.text!.trimmingCharacters(in: .whitespaces)
            self.text = trimmedString
        }else{
            let button = self.rightView as! UIButton
            button.setImage(UIImage(named: "hidePassword"), for: .normal)
            self.isSecureTextEntry = true
            self.text = self.text! + " "
            let trimmedString = self.text!.trimmingCharacters(in: .whitespaces)
            self.text = trimmedString
        }
    }

    func setBorder(radius: CGFloat, width: CGFloat, color: CGColor){
        self.layer.cornerRadius = radius
        self.layer.borderWidth = width
        self.layer.borderColor = color
        self.layer.masksToBounds = true
    }

    open override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {

        guard inputView != nil else {
            return action == #selector(UIResponderStandardEditActions.paste(_:)) ?
                false : super.canPerformAction(action, withSender: sender)
        }
        return false
    }

    //This function move the text field cursour
    func moveCursor(offset position: Int){
        if let newPosition = self.position(from: self.beginningOfDocument, offset: position) {
            self.selectedTextRange = self.textRange(from: newPosition, to: newPosition)
        }
    }
}
