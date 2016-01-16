//
//  RequiredFieldValidator.swift
//  grubber
//
//  Created by JABE on 11/16/15.
//  Copyright © 2015 JABELabs. All rights reserved.
//


public class RequiredFieldValidator : JLControlValidator {
    override func isValid() -> Bool {
        return controlToValidate.hasInput()
    }
    
}