//
//  VaildatorFactory.swift
//  MassiveValidator
//
//  Created by Julio Collado on 3/29/20.
//  Copyright © 2020 Altimetrik. All rights reserved.
//

import Foundation

struct VaildatorFactory {
    static func validatorFor(type: ValidatorType) -> Validatable {
        switch type {
        case .email: return EmailValidator()
        case .password: return PasswordValidator()
        case .username: return NameValidator()
        case .requiredField(let fieldName): return RequiredValidator(fieldName)
        case .age: return AgeValidator()
        case .phoneNumber: return PhoneNumberValidator()
        }
    }
}
