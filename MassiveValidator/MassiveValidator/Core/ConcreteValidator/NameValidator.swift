//
//  NameValidator.swift
//  MassiveValidator
//
//  Created by Julio Collado on 3/29/20.
//  Copyright © 2020 Altimetrik. All rights reserved.
//

import Foundation

struct NameValidator: Validatable {
    
    func isValid(_ value: String, completion: ((String?) -> ())?) -> Bool {
        guard value.count >= 3 else {
            completion?("User's name must contain more than three characters" )
            return false
        }
        guard value.count < 18 else {
            completion?("Username shoudn't conain more than 18 characters" )
            return false
        }
        
        do {
            if try NSRegularExpression(pattern: "^[a-z]{1,18}$",  options: .caseInsensitive).firstMatch(in: value, options: [], range: NSRange(location: 0, length: value.count)) == nil {
                completion?("Invalid username, username should not contain whitespaces, numbers or special characters")
                return false
            }
        } catch {
           completion?("Invalid username, username should not contain whitespaces, or special characters")
            return false
        }
        completion?(nil)
        return true
    }
    
}
