//
//  PasswordValidator.swift
//  MassiveValidator
//
//  Created by Julio Collado on 3/29/20.
//  Copyright © 2020 Altimetrik. All rights reserved.
//

import Foundation

struct PasswordValidator: Validatable {
    
    func isValid(_ value: String, completion: ((String?) -> ())?) -> Bool {
        
        guard !value.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {  completion?("Password is Required"); return false }
        guard value.count >= 6 else {  completion?("Password must have at least 6 characters"); return false }
        
        let passwordRegexEvaluation = NSPredicate(format: "SELF MATCHES %@", "(?:(?:(?=.*?[0-9])(?=.*?[-!@#$%&*ˆ+=_])|(?:(?=.*?[0-9])|(?=.*?[A-Z])|(?=.*?[-!@#$%&*ˆ+=_])))|(?=.*?[a-z])(?=.*?[0-9])(?=.*?[-!@#$%&*ˆ+=_]))[A-Za-z0-9-!@#$%&*ˆ+=_]{6,15}")
        let isValidPassword = passwordRegexEvaluation.evaluate(with: value)
        guard isValidPassword else {  completion?("Password must be more than 6 characters, with at least one character and one numeric character"); return false }
        
        completion?(nil)
        return true
    }
    
}

