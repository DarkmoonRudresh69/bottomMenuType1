//
//  ViewController.swift
//  BottomMenuView
//
//  Created by DarkMoon on 23/04/24.
//

import UIKit

class ViewController: UIViewController, BottomMenuDelegate{

    var bottomMenu1: BottomMenuView1!
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let heightofView = 66.0
        let bottomheight = 40.0
        let width = 80.0

        let ypos = self.view.bounds.height - UIApplication.shared.windows[0].safeAreaInsets.bottom - heightofView - bottomheight
        bottomMenu1 = BottomMenuView1(frame: CGRect(x:40 , y:ypos , width: self.view.bounds.width-width, height: 66))
        bottomMenu1.delegate = self
        self.view.addSubview(bottomMenu1)
    }
     
    
   private func showSearchViewcontroller() {
        let vc = SearchViewController1(nibName: "SearchViewController1", bundle: Bundle.main)
        self.navigationController?.pushViewController(vc, animated: true)

   }

    @IBAction func searchVCAction(_ sender: UIButton) {
        showSearchViewcontroller()
    }
    
   
    
    // MARK: - Public Functions

    func didSelectIndex(at index:Int){
        print(#function)
        print("#function",index)
        if (index == 1) {
            let vc = FavouriteViewController(nibName: "FavouriteViewController", bundle: Bundle.main)
            self.navigationController?.pushViewController(vc, animated: true)
        }
        if (index == 2) {
//            let vc = ProfileViewController(nibName: "ProfileViewController", bundle: Bundle.main)
//            self.navigationController?.pushViewController(vc, animated: true)
            let vc = HomeViewController(nibName: "HomeViewController", bundle: Bundle.main)
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }

}

