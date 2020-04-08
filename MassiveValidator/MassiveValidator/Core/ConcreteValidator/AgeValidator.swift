//
//  AgeValidator.swift
//  MassiveValidator
//
//  Created by Julio Collado on 3/29/20.
//  Copyright © 2020 Altimetrik. All rights reserved.
//

import Foundation

struct AgeValidator: Validatable {
    
    func isValid(_ value: String, completion: ((String?) -> ())?) -> Bool {
        guard value.count > 0 else { completion?("Age is required"); return false }
        guard let age = Int(value) else { completion?("Age must be a number"); return false }
        guard value.count < 3 else { completion?("Invalid age number"); return false }
        guard age >= 18 else { completion?("You have to be over 18 years old to use this app"); return false }
        completion?(nil)
        return true
    }
    
}
