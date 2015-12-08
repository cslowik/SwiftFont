//
//  UIFont-SwiftFont.swift
//  Swift Font
//
//  Created by Chris Slowik on 12/8/15.
//  Copyright © 2015 test. All rights reserved.
//

import Foundation
import UIKit

extension NSAttributedString {
    
    func attributedString(string: String, tracking: CGFloat, font: UIFont) -> NSAttributedString {
        let fontSize = font.pointSize
        let characterSpacing = tracking * fontSize / 1000
        
        let attributes = [NSFontAttributeName: font, NSKernAttributeName: characterSpacing]
        
        return NSAttributedString(string: string, attributes: attributes)
    }
    
}