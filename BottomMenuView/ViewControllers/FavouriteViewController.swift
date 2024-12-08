//
//  FavouriteViewController.swift
//  BottomMenuView
//
//  Created by DarkMoon on 27/10/24.
//

import UIKit

class FavouriteViewController: UIViewController {
    // MARK: - View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.hidesBackButton = true
    }

}
