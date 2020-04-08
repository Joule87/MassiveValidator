//
//  UITextField_Extension.swift
//  MassiveValidator
//
//  Created by Julio Collado on 4/7/20.
//  Copyright © 2020 Altimetrik. All rights reserved.
//

import UIKit.UITextField

extension UITextField {
    @discardableResult
    public func isValidText(for validationType: ValidatorType, handler: ((_ errorDescription: String?) -> ())?) -> Bool {
        let validator = VaildatorFactory.validatorFor(type: validationType)
        return validator.isValid(self.text!, completion: handler)
    }
}
