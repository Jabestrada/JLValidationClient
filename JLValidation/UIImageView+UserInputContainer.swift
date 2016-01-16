//
//  UIImageView+UserInputContainer.swift
//  grubber
//
//  Created by JABE on 11/16/15.
//  Copyright © 2015 JABELabs. All rights reserved.
//

extension UIImageView : UserInputContainer {
    public func hasInput() -> Bool {
        return self.image != nil
    }
}