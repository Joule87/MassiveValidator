//
//  ValidatorType.swift
//  MassiveValidator
//
//  Created by Julio Collado on 3/29/20.
//  Copyright © 2020 Altimetrik. All rights reserved.
//

import Foundation

public enum ValidatorType {
    case email
    case password
    case username
    case requiredField(field: String)
    case age
    case phoneNumber
}
