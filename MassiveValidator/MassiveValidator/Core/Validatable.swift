//
//  Validatable.swift
//  MassiveValidator
//
//  Created by Julio Collado on 3/29/20.
//  Copyright © 2020 Altimetrik. All rights reserved.
//

import Foundation

public protocol Validatable {
    func isValid(_ value: String, completion: ((_ errorDescription: String?) -> ())?) -> Bool
}
