/*
UICollectionReusableView.swift
Created by William Falcon on 4/7/15.

The MIT License (MIT)

Copyright (c) 2015 William Falcon
will@hacstudios.com

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

import UIKit

public extension UIColor {
    
    ///Instantiate by passing numbers 0-255
    convenience init(_red:CGFloat, _green:CGFloat, _blue:CGFloat, _alpha:CGFloat) {
        self.init(red: _red/255, green: _green/255, blue: _blue/255, alpha: _alpha)
    }
    
    ///Scale a color to a different color using a scaling coefficient.
    ///Coefficient (lightr) 0 -> 1.0 (Darkere)
    func _scaledColor(coeff:CGFloat) -> UIColor {
        var red : CGFloat = 0.0
        var green : CGFloat = 0.0
        var blue : CGFloat = 0.0
        var alpha : CGFloat = 0.0
        
        self.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        
        let scaledColor = UIColor(red: red*coeff, green: green*coeff, blue: blue*coeff, alpha: alpha*coeff)
        return scaledColor
    }
    
    ///Returns the rgb values (red:10.0, green:20.0, blue:30.0)
    func _rgbValues() -> (red:CGFloat, green:CGFloat, blue:CGFloat) {
        var red : CGFloat = 0.0
        var green : CGFloat = 0.0
        var blue : CGFloat = 0.0
        var alpha : CGFloat = 0.0
        
        self.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        return (red:red*255, green:green*255, blue:blue*255)
    }
}
