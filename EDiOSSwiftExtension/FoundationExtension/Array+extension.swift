//
//  Array+extension.swift
//  Reusable_framework
//
//  Created by BJIT on 12/8/22.
//
//https://medium.com/@vishwasng/constrained-extension-in-swift-with-arrays-5000c5678b19


import Foundation

public extension Array {
    
    subscript (safe index: Int) -> Element? {
        guard index >= 0 && index < self.count else {
            return nil
        }
        return self[index]
    }
    
    func element(at index: Int) -> Element? {
            guard index >= 0, index < count else {
                return nil
            }

            return self[index]
        }
}

public extension Array where Element == String
{
    func totalCharacterCount() -> Int
    {
        return reduce(0, { $0 + $1.count})
    }
    
    func wordCount() -> Int
    {
        return reduce(0, {$0 + $1.components(separatedBy: " ").count})
    }
    
    func wordCharacterCount() -> [Int]
    {
        var countArray:[Int] = [Int]()
        countArray =  map{$0.count}
        return countArray
    }
}


public extension Array where Element : Numeric
{
    func sum() -> Element
    {
        if self.count == 0
        {
            return 0
        }
        return reduce(0, +)
    }
    
    func string() -> [String]
    {
        return compactMap{String(describing: $0)}
    }
}


public extension Array where Element == Character
{
    func characterCount() -> Dictionary<Character,Int>
    {
        var dict = Dictionary<Character,Int>()
        self.forEach { (chr) in
            
            if ((dict.index(forKey: chr)) == nil)
            {
                dict[chr] = 1
            }
            else
            {
                if let inr:Int = dict[chr]
                {
                    dict[chr] = inr + 1
                }
            }
        }
        return dict
    }
}


