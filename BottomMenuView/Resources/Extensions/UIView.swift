//
//  UIview.swift
//  BottomMenuView
//
//  Created by DarkMoon on 27/10/24.
//

import Foundation

import UIKit

extension UIView {
    
    
    var midXValue:CGFloat {
        return UIScreen.main.bounds.midX
    }
    
    var midYValue:CGFloat {
        return UIScreen.main.bounds.midY
    }
    
    func styleRoundView(borderColor: UIColor, borderWidth: CGFloat) {
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = borderWidth
        self.layer.masksToBounds = true
    }
    
    @IBInspectable var cornerRadiusV: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderWidthV: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColorV: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
    
    func roundCornersOnTopRightAndLeft(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
    
    func setAttributedText(for label: UILabel, text: String, font: UIFont, lineHeight: CGFloat) {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = lineHeight
        
        let attributes: [NSAttributedString.Key: Any] = [
            .font: font,
            .paragraphStyle: paragraphStyle
        ]
        
        let attributedString = NSAttributedString(string: text, attributes: attributes)
        label.attributedText = attributedString
    }
    
    func addToKeyWindow() {
        // Access the key window
        if let keyWindow = UIApplication.shared.connectedScenes
            .filter({ $0 is UIWindowScene })
            .flatMap({ ($0 as? UIWindowScene)?.windows ?? [] })
            .first(where: { $0.isKeyWindow }) {
            
            // Configure the frame as needed
            self.frame = CGRect(x: keyWindow.bounds.width, y: 0, width: keyWindow.bounds.width, height: keyWindow.bounds.height)
            self.isHidden = false
            
            // Add the view to the key window
            keyWindow.addSubview(self)
        }
    }
    
    func removeFromKeyWindow() {
        // Remove the view from its superview
        self.removeFromSuperview()
    }
}

