//
//  Fonts.swift
//  BottomMenuView
//
//  Created by DarkMoon on 27/10/24.
//

import Foundation
import UIKit

enum CustomFont:String {
    case regular = "Nunito-Regular"
    func font(size: CGFloat)-> UIFont?{
        return UIFont(name: self.rawValue, size: size)
    }
}
