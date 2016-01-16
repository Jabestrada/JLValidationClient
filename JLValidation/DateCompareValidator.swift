//
//  CompareValidator.swift
//  Grubbie
//
//  Created by JABE on 11/29/15.
//  Copyright © 2015 JABELabs. All rights reserved.
//


public class DateCompareValidator : JLControlValidator {
    var dateProviderControl : DateProviderControl
    var dateToCompare : NSDate
    var compareRules : [NSComparisonResult]

    private var compareToCurrentDate : Bool = false
    
    override init(controlToValidate: UserInputContainer, errorMessage: String) {
        dateToCompare = NSDate()
        compareRules = [NSComparisonResult.OrderedSame]
        dateProviderControl =  controlToValidate as! DateProviderControl
        super.init(controlToValidate: controlToValidate, errorMessage: errorMessage)
    }
    
    convenience init(controlToValidate: UserInputContainer, errorMessage: String, compareRules: [NSComparisonResult], dateToCompare: NSDate) {
        self.init(controlToValidate: controlToValidate, errorMessage: errorMessage)
        self.dateToCompare = dateToCompare
        self.compareRules = compareRules
    }

    convenience init(controlToValidate: UserInputContainer, errorMessage: String, compareRules: [NSComparisonResult], compareToCurrentDate: Bool) {
        self.init(controlToValidate: controlToValidate, errorMessage: errorMessage)
        self.compareRules = compareRules
        self.compareToCurrentDate = true
    }
    
    override func isValid() -> Bool {
        let compareToDate = self.compareToCurrentDate ? NSDate() : self.dateToCompare
        let compareResult = self.dateProviderControl.getDate().compare(compareToDate)
        return self.compareRules.contains(compareResult)
    }
}