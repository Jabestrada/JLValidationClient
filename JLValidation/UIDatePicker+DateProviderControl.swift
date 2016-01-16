//
//  UIDatePicker+DateProviderControl.swift
//  Grubbie
//
//  Created by JABE on 11/29/15.
//  Copyright © 2015 JABELabs. All rights reserved.
//

extension UIDatePicker : DateProviderControl {
    func getDate() -> NSDate {
        return self.date
    }
}
