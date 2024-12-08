//
//  UiViewController.swift
//  BottomMenuView
//
//  Created by DarkMoon on 27/10/24.
//

import Foundation

import UIKit

extension UIViewController {
    var viewWidth:Int {
        return Int(view.frame.width)
    }

    var viewHeight:Int {
        return Int(view.frame.height)
    }
    
    var boundsHeight:CGFloat {
        return UIScreen.main.bounds.height
    }
    
    var boundsWidth:CGFloat {
        return UIScreen.main.bounds.width
    }
    
    var safeAreaInsists:UIEdgeInsets {
        return view.safeAreaInsets
    }
    
}

extension UIStoryboard {
    static func instantiateViewController<T: UIViewController>(storyboardName: String, identifier: String) -> T? {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: identifier) as? T
    }
}
