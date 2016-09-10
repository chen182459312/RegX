//
//  RegularForm.swift
//  RegX
//
//  Created by Krunoslav Zaher on 10/18/14.
//  Copyright (c) 2014 Krunoslav Zaher. All rights reserved.
//

import Foundation
import AppKit

struct GroupSettings {
    let paddingBefore: Int?
    let paddingAfter: Int?
    
    init(_ paddingBefore: Int?, _ paddingAfter: Int?) {
        self.paddingBefore = paddingBefore
        self.paddingAfter = paddingAfter
    }
}

struct RegularForm  {
    let name : String
    let pattern : String
    let shortcut : String
    let modifier : NSEventModifierFlags
    let settings : [GroupSettings]
    
    func alignColumns(text: String, tabWidth: Int) -> String {
        let regularExpression = try!
        NSRegularExpression(pattern: pattern,
                            options: NSRegularExpression.Options.allowCommentsAndWhitespace)
        
        return Regularizer(tabWidth: tabWidth).regularize(text: text,
                           settings: settings,
                  regularExpression: regularExpression)
    }
}
