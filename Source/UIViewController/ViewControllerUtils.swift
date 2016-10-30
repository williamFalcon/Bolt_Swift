/*
UIViewController.swift
Created by William Falcon on 3/26/15.

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

import Foundation
import UIKit


public extension UIViewController {
    
    /// Storyboard containing this VC must be named after this VC.
    /// Ex: MainViewController   ->  Main.storyboard
    class func _newInstance() -> UIViewController {
        let name = _storyboardName()
        return _newInstanceFromStoryboardNamed(sbName: name)
    }
    
    /// Returns a newly instantiated VC from the input storyboard
    class func _newInstanceFromStoryboardNamed(sbName : String) -> UIViewController {
        let storyboard = UIStoryboard(name: sbName, bundle: Bundle.main)
        let viewController = storyboard.instantiateViewController(withIdentifier: _identifier()) 
        return viewController
    }
  
    /// Class name is the identifier for the storyboard
    class func _identifier() -> String {
        return NSStringFromClass(type(of: self) as! AnyClass).components(separatedBy: ".")[0]
    }
    
    /// Storyboard name is the class of this VC without the words ViewController
    class func _storyboardName() -> String {
        var sbName = NSStringFromClass(type(of: self) as! AnyClass).components(separatedBy: ".")[0]
        
        sbName = sbName._removeString(str: "ViewController")!
        return sbName
    }
}
