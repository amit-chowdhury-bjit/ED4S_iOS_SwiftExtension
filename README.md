#  ED4 iOS Swift Extensions

## Extension List


 #### UIKit Extensions #### 
 
              1. UITableView
                   - register
                   - dequeueReusableCell
                   - dequeueReusableHeaderFooterView
                   - estimatedRowHeight
                   - hideEmptyCells
                   - indexPaths
                   - nextIndexPath
                   - previousIndexPath
                   - reloadData
                   - insertRowsAtBottom
                   - totalRows
                   - lastIndexPath
                   - scrollBottomWithoutFlashing
                   - scrollBottomToLastRow
                   - isContentInsetBottomZero
                   - resetContentInsetAndScrollIndicatorInsets
                   
              2. UICollectionView
                   - register
                   - dequeueReusableCell

              3. UIButton
                   - setSFSymbol
                   - centerTitleVertically
              4. UIImage
                   - fixImageOrientation
                   - imageWithColor
                   - trim
                   - maskWithColor
                   - squared
                   - resized
                   - resizeImageTo
                   - imageByApplayingAlpha
                   - cropWithCropRect
                   - drawTextInImage
                   - checkImageDataType
                   - resizedImage
                   - imageQRCode
              5. UITextField
                   - addLeftTextPadding
                   - setRightPaddingPoints
                   - addLeftIcon
                   - validateDigits
                   - validatePassword
                   - validSearchKeyword
                   - removeWhitespacesAndNewLines
                   - setShowAndHideButton
                   - setBorder
                   - moveCursor
              6. UIView
                   - xibSetup
                   - stretch
                   - addCornerRadius
                   - addBorderLine
                   - makeRounded
                   - elevated
                   - makeItCard
                   - makeItCircular
                   - addShadow
                   - crossDissolve
                   - rightValidAccessoryView
                   - rightInValidAccessoryView
              7. UIStackView
                   - insertSeparator
                   - separator
                   - removeFully
              8. UIDevice
                  - isIphone
                  - isPadDevice
                  - isCanCallTel
                  - diskSpace
                  - diskSpaceFree
                  - diskSpaceUsed
                  - memoryTotal
                  - deviceLanguage
              9. UITextView
                  - setMinimumLineHeightAndLetterSpcae
             10. UIViewController
                  - isModal
                  - findChildViewControllerOfType
                  - hideKeyboardWhenTappedAround
                  
 #### Foundation Extensions ####   
          
              1. String
              2. NSAttributedString
              3. NSIndexPath
              4. Bool
              5. Data 
              6. Date
              7. Dictionary
              8. Double
              9. FileManager
             10. Bundle
             11. Int
             12. UIColor
             13. Array
             
  ### Installation ###
 ---
  
  ### CocoaPods ####
  
[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate Swift extension into your Xcode project using CocoaPods, specify it in your Podfile:


 `pod 'EDiOSSwiftExtension'                                                                 `
