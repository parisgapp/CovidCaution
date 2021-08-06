//
//  NSAttributedString.swift
//  Iteration0
//
//  Created by Indi Wagner on 8/5/21.
//

import Foundation


extension NSAttributedString {
    
    static func makeHyperlink(for path: String, in string: String, as substring: String) -> NSAttributedString {
        
        let nString = NSString(string: string)
        let substringRange = nString.range(of: substring)
        let attributedString = NSMutableAttributedString(string: string)
        attributedString.addAttribute(.link, value: path, range: substringRange)
        return attributedString
    }
}
