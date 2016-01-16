//
//  UITextField+UserInputContainer.swift
//  grubber
//
//  Created by JABE on 11/16/15.
//  Copyright © 2015 JABELabs. All rights reserved.
//

extension UITextField : UserInputContainer {
    public func hasInput() -> Bool {
        if let text = self.text{
            return !text.isEmpty
        }
        return false
    }
}

