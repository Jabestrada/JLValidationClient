//
//  JLControlValidator.swift
//  grubber
//
//  Created by JABE on 11/16/15.
//  Copyright © 2015 JABELabs. All rights reserved.
//


public class JLControlValidator {
    var controlToValidate : UserInputContainer
    var errorMessage : String
    
    init(controlToValidate: UserInputContainer, errorMessage: String){
        self.controlToValidate = controlToValidate
        self.errorMessage = errorMessage
    }
    
    func isValid() -> Bool {
        assertionFailure("Method is not supposed to be called directly through BaseValidator.")
        return false
    }
}