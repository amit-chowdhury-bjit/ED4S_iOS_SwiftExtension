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
                 - nilIfEmpty
                 - htmlToAttributedString
                 - htmlToString
                 - isValidEmail
                 - containsOnlyDigits
                 - containsOnlyLetters
                 - isAlphanumeric
                 - isAlphanumericLageSmall
                 - wordCount
                 - replacingOccurrences
                 - truncate
                 - withPrefix
                 - underLineMutableString
                 - convertToMutableString
                 - formatPhoneNumber
                 - withCommas
                 - extractNumber
                 - extractEmail
                 - getTextHeight
                 - lastPathComponent
                 - pathExtension
                 - deletingLastPathComponent
                 - deletingPathExtension
                 - pathComponents
                 - addComma
                 - stringToFloat
                 - stringToDouble
                 - trimmed
                 - asURL
                 - inserting
                 - isDecimalDigits
              2. NSAttributedString
                 - height
                 - width
              3. NSIndexPath
                 - sectionNRowString
                 - previousRow
                 - nextRow
              4. Bool
                 - boolToInt
              5. Data 
                 - encodeToData
                 - decodeToDada
                 - bytes
              6. Date
                 - today
                 - isToDay
                 - startOfDay
                 - dateString
                 - systemlocalDateString
                 - weekdayName
                 - dayNumberOfWeek
                 - year
                 - yesterday
                 - tomorrow
                 - noon
                 - month
                 - isLastDayOfMonth
                 - previousWeek
                 - nextWeek
                 - previousMonth
                 - nextMonth
                 - previousYear
                 - nextYear
                 - numberOfDaysInMonth
                 - begainOfDay
                 - endOfDay
                 - startOfMonth
                 - endOfMonth
                 - dateStartAtzero
                 - toString
                 - secondStamp
                 - milliStamp
              7. Dictionary
                 - has
                 - toArray
                 - jsonToDictionary
                 - toJSON
              8. FileManager
                 - save
                 - create
                 - delete
                 - rename
                 - copy
                 - home
                 - document
                 - library
                 - temp
                 - caches
                 - preferences
             9. Bundle
                 - displayName
                 - appVersion
                 - parsePlist
                 - decode
             10. Int
                - withCommas
                - boolValue
                - toDouble
                - toString
             11. Double 
                - toString
                - toInt
                - roundTo
             12. UIColor
                - red: Int, green: Int, blue: Int, alpha: CGFloat = 1.0
                - hexCode: String, alpha: CGFloat = 1.0
             13. Array
                - element
                - totalCharacterCount
                - wordCount
                - wordCharacterCount
                - sum
                - string
                - characterCount
             
  ### Installation ###
 ---
  
  ### CocoaPods ####
  
[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate Swift extension into your Xcode project using CocoaPods, specify it in your Podfile:


 `pod 'EDiOSSwiftExtension'                                                                 `
