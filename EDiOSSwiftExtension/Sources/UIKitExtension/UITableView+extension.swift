
//  UITableView+extension.swift
//  Reusable_framework
//
//  Created by BJIT on 16/8/22.
//


#if canImport(UIKit)
import UIKit
import Foundation

// MARK: Reusable support for UITableView

public extension UITableView {
  /**
   Register a NIB-Based `UITableViewCell` subclass (conforming to `Reusable` & `NibLoadable`)

   - parameter cellType: the `UITableViewCell` (`Reusable` & `NibLoadable`-conforming) subclass to register

   - seealso: `register(_:,forCellReuseIdentifier:)`
   */
  final func register<T: UITableViewCell>(cellType: T.Type)
    where T: Reusable & NibLoadable {
      self.register(cellType.nib, forCellReuseIdentifier: cellType.reuseIdentifier)
  }

  /**
   Register a Class-Based `UITableViewCell` subclass (conforming to `Reusable`)

   - parameter cellType: the `UITableViewCell` (`Reusable`-conforming) subclass to register

   - seealso: `register(_:,forCellReuseIdentifier:)`
   */
  final func register<T: UITableViewCell>(cellType: T.Type)
    where T: Reusable {
      self.register(cellType.self, forCellReuseIdentifier: cellType.reuseIdentifier)
  }

  /**
   Returns a reusable `UITableViewCell` object for the class inferred by the return-type

   - parameter indexPath: The index path specifying the location of the cell.
   - parameter cellType: The cell class to dequeue

   - returns: A `Reusable`, `UITableViewCell` instance

   - note: The `cellType` parameter can generally be omitted and infered by the return type,
   except when your type is in a variable and cannot be determined at compile time.
   - seealso: `dequeueReusableCell(withIdentifier:,for:)`
   */
  final func dequeueReusableCell<T: UITableViewCell>(for indexPath: IndexPath, cellType: T.Type = T.self) -> T
    where T: Reusable {
      guard let cell = self.dequeueReusableCell(withIdentifier: cellType.reuseIdentifier, for: indexPath) as? T else {
        fatalError(
          "Failed to dequeue a cell with identifier \(cellType.reuseIdentifier) matching type \(cellType.self). "
            + "Check that the reuseIdentifier is set properly in your XIB/Storyboard "
            + "and that you registered the cell beforehand"
        )
      }
      return cell
  }

  /**
   Register a NIB-Based `UITableViewHeaderFooterView` subclass (conforming to `Reusable` & `NibLoadable`)

   - parameter headerFooterViewType: the `UITableViewHeaderFooterView` (`Reusable` & `NibLoadable`-conforming)
   subclass to register

   - seealso: `register(_:,forHeaderFooterViewReuseIdentifier:)`
   */
  final func register<T: UITableViewHeaderFooterView>(headerFooterViewType: T.Type)
    where T: Reusable & NibLoadable {
      self.register(headerFooterViewType.nib, forHeaderFooterViewReuseIdentifier: headerFooterViewType.reuseIdentifier)
  }

  /**
   Register a Class-Based `UITableViewHeaderFooterView` subclass (conforming to `Reusable`)

   - parameter headerFooterViewType: the `UITableViewHeaderFooterView` (`Reusable`-confirming) subclass to register

   - seealso: `register(_:,forHeaderFooterViewReuseIdentifier:)`
   */
  final func register<T: UITableViewHeaderFooterView>(headerFooterViewType: T.Type)
    where T: Reusable {
      self.register(headerFooterViewType.self, forHeaderFooterViewReuseIdentifier: headerFooterViewType.reuseIdentifier)
  }

  /**
   Returns a reusable `UITableViewHeaderFooterView` object for the class inferred by the return-type

   - parameter viewType: The view class to dequeue

   - returns: A `Reusable`, `UITableViewHeaderFooterView` instance

   - note: The `viewType` parameter can generally be omitted and infered by the return type,
   except when your type is in a variable and cannot be determined at compile time.
   - seealso: `dequeueReusableHeaderFooterView(withIdentifier:)`
   */
  final func dequeueReusableHeaderFooterView<T: UITableViewHeaderFooterView>(_ viewType: T.Type = T.self) -> T?
    where T: Reusable {
      guard let view = self.dequeueReusableHeaderFooterView(withIdentifier: viewType.reuseIdentifier) as? T? else {
        fatalError(
          "Failed to dequeue a header/footer with identifier \(viewType.reuseIdentifier) "
            + "matching type \(viewType.self). "
            + "Check that the reuseIdentifier is set properly in your XIB/Storyboard "
            + "and that you registered the header/footer beforehand"
        )
      }
      return view
  }

    func estimatedRowHeight(_ height: CGFloat) {
        self.rowHeight = UITableView.automaticDimension
        self.estimatedRowHeight = height
    }
    
    /// Hide empty cells
    func hideEmptyCells() {
        self.tableFooterView = UIView(frame: .zero)
    }
    
    /// Retrive all the IndexPaths for the section.
        ///
        /// - Parameter section: The section.
        /// - Returns: Return an array with all the IndexPaths.
    func indexPaths(section: Int) -> [IndexPath] {
            var indexPaths: [IndexPath] = []
            let rows: Int = self.numberOfRows(inSection: section)
            for i in 0 ..< rows {
                let indexPath: IndexPath = IndexPath(row: i, section: section)
                indexPaths.append(indexPath)
            }
            
            return indexPaths
        }
        
        /// Retrive the next index path for the given row at section.
        ///
        /// - Parameters:
        ///   - row: Row of the index path.
        ///   - section: Section of the index path
        /// - Returns: Returns the next index path.
        func nextIndexPath(row: Int, forSection section: Int) -> IndexPath? {
            let indexPath: [IndexPath] = self.indexPaths(section: section)
            guard indexPath != [] else {
                return nil
            }
            
            return indexPath[row + 1]
        }
        
        /// Retrive the previous index path for the given row at section
        ///
        /// - Parameters:
        ///   - row: Row of the index path.
        ///   - section: Section of the index path.
        /// - Returns: Returns the previous index path.
        func previousIndexPath(row: Int, forSection section: Int) -> IndexPath? {
            let indexPath: [IndexPath] = self.indexPaths(section: section)
            guard indexPath != [] else {
                return nil
            }
            
            return indexPath[row - 1]
        }

     func reloadData(_ completion: @escaping ()->()) {
        UIView.animate(withDuration: 0, animations: {
            self.reloadData()
        }, completion:{ _ in
            completion()
        })
    }
    
    
    func insertRowsAtBottom(_ rows: [IndexPath]) {
        UIView.setAnimationsEnabled(false)
        CATransaction.begin()
        CATransaction.setDisableActions(true)
        self.beginUpdates()
        self.insertRows(at: rows, with: .none)
        self.endUpdates()
        self.scrollToRow(at: rows[0], at: .bottom, animated: false)
        CATransaction.commit()
        UIView.setAnimationsEnabled(true)
    }
    
    func totalRows() -> Int {
        var i = 0
        var rowCount = 0
        while i < self.numberOfSections {
            rowCount += self.numberOfRows(inSection: i)
            i += 1
        }
        return rowCount
    }
    
    var lastIndexPath: IndexPath? {
        if (self.totalRows()-1) > 0{
            return IndexPath(row: self.totalRows()-1, section: 0)
        } else {
            return nil
        }
    }
    
    //Called after inserting data
    func scrollBottomWithoutFlashing() {
        guard let indexPath = self.lastIndexPath else {
            return
        }
        UIView.setAnimationsEnabled(false)
        CATransaction.begin()
        CATransaction.setDisableActions(true)
        self.scrollToRow(at: indexPath, at: .bottom, animated: false)
        CATransaction.commit()
        UIView.setAnimationsEnabled(true)
    }
    
    // Called after the keyboard animation ends
    func scrollBottomToLastRow() {
        guard let indexPath = self.lastIndexPath else {
            return
        }
        self.scrollToRow(at: indexPath, at: .bottom, animated: false)
    }

    var isContentInsetBottomZero: Bool {
        get { return self.contentInset.bottom == 0 }
    }
    
    func resetContentInsetAndScrollIndicatorInsets() {
        self.contentInset = UIEdgeInsets.zero
        self.scrollIndicatorInsets = UIEdgeInsets.zero
    }

}
#endif
