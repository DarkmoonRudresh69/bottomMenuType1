//
//  ViewController.swift
//  BottomMenuView
//
//  Created by DarkMoon on 23/04/24.
//

import UIKit

class ViewController: UIViewController {

    var bottomMenu1: BottomMenuView1!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let heightofView = 66.0
        let bottomheight = 40.0
        let width = 80.0

        let ypos = self.view.bounds.height - UIApplication.shared.windows[0].safeAreaInsets.bottom - heightofView - bottomheight
        bottomMenu1 = BottomMenuView1(frame: CGRect(x:40 , y:ypos , width: self.view.bounds.width-width, height: 66))
        self.view.addSubview(bottomMenu1)
    }


}

