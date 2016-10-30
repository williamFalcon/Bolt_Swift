//
//  UIPanGestureRecognizer.swift
//  Testee
//
//  Created by William Falcon on 5/29/15.
//  Copyright (c) 2015 William Falcon. All rights reserved.
//

import UIKit

public extension UIPanGestureRecognizer {

    func _draggedLeftInView(inputView:UIView) -> Bool {
        let velocity = self.velocity(in: inputView)
        return !(velocity.x > 0)
    }

    func _isHorizontalInView(inputView:UIView) -> Bool {
        let velocity = self.velocity(in: inputView)
        return (velocity.y > 0)
    }
}
