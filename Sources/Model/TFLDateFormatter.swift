//
//  TFLDateFormatter.swift
//  Brunel
//
//  Created by Aaron McTavish on 18/01/2016.
//  Copyright © 2016 ustwo. All rights reserved.
//

import Foundation


/**
 *  Deserializes a date string returned from a TfL API endpoint into a `NSDate`.
 */
struct TFLDateFormatter {
    
    private let dateFormatter = NSDateFormatter()
    
    static let sharedInstance = TFLDateFormatter()
    
    init() {
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS"
    }
    
    func dateFromString(text: String) -> NSDate? {
        return dateFormatter.dateFromString(text)
    }
    
}
