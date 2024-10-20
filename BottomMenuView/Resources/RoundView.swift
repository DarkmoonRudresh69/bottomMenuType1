//
//  RoundView.swift
//  BottomMenuView
//
//  Created by DarkMoon on 23/04/24.
//

import Foundation
import  UIKit
@IBDesignable
class RoundView:UIView {
    
    @IBInspectable var cornerRadius:CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }   
    
}
