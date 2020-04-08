//
//  RequiredValidator.swift
//  MassiveValidator
//
//  Created by Julio Collado on 3/29/20.
//  Copyright © 2020 Altimetrik. All rights reserved.
//

import Foundation

struct RequiredValidator: Validatable {
    
    private let fieldName: String
    
    init(_ field: String) {
        fieldName = field
    }
    
    func isValid(_ value: String, completion: ((String?) -> ())?) -> Bool {
        guard !value.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty else {
            completion?(fieldName + "is mandatory")
            return false
        }
        completion?(nil)
        return true
    }

}
