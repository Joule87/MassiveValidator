//
//  PhoneNumberValidator.swift
//  MassiveValidator
//
//  Created by Julio Collado on 4/6/20.
//  Copyright © 2020 Altimetrik. All rights reserved.
//

import Foundation

struct PhoneNumberValidator: Validatable {
    func isValid(_ value: String, completion: ((String?) -> ())?) -> Bool {
        var isValidPhoneNumber = false
        do {
            let detector = try NSDataDetector(types: NSTextCheckingResult.CheckingType.phoneNumber.rawValue)
            let matches = detector.matches(in: value, options: [], range: NSRange(location: 0, length: value.count))
            if let res = matches.first {
                isValidPhoneNumber = res.resultType == .phoneNumber && res.range.location == 0 && res.range.length == value.count
            } else {
                completion?("Invalid phone number")
                return false
            }
        } catch {
            completion?("Invalid phone number")
            return false
        }
        
        if isValidPhoneNumber {
            completion?(nil)
            return true
        } else {
            completion?("Invalid phone number")
            return false
        }
       
    }
    
}
