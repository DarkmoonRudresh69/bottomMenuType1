//
//  BottomMenuView1.swift
//  BottomMenuView
//
//  Created by DarkMoon on 23/04/24.
//

import UIKit

protocol BottomMenuDelegate: AnyObject {
    func didSelectIndex(at index: Int)
}

class BottomMenuView1: UIView {
    var view :UIView!
    weak var  delegate: BottomMenuDelegate?
    @IBOutlet weak var homeSel: UIImageView!
    
    @IBOutlet weak var homLbl: UILabel!
    
    @IBOutlet weak var favSel: UIImageView!
    
    @IBOutlet weak var favLbl: UILabel!
    
    @IBOutlet weak var profileImg: UIImageView!
    
    @IBOutlet weak var profileLbl: UILabel!
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        XIBSetup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        XIBSetup()
    }
    
    
  //MARK: - Private Functions
    
    private func XIBSetup() {
        let bundle = Bundle(for: type(of: self))
        view = bundle.loadNibNamed("BottomMenuView1", owner: self, options: nil)? .first as? UIView
        view.frame = bounds
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(view)
        
        setupViews()
        
        homLbl.font = CustomFont.regular.font(size: 10)
        favLbl.font = CustomFont.regular.font(size: 10)
        profileLbl.font = CustomFont.regular.font(size: 10)
    }
    
    private func setupViews() {
        homLbl.textColor = CustomColors.lightredColor
        let img1 = UIImage(named: "homeSel")
        homeSel.image = img1
       
        favLbl.textColor = CustomColors.lightgrayColor
        let img2 = UIImage(named: "favourite")
        favSel.image = img2
       
        profileLbl.textColor = CustomColors.lightgrayColor
        let img3 = UIImage(named: "profile")
        profileImg.image = img3
        
    }
    
    //MARK: - IBAction Functions

    
    @IBAction func homeBtnClicked(_ sender: Any) {
        homLbl.textColor = CustomColors.lightredColor
        let img1 = UIImage(named: "homeSel")
        homeSel.image = img1
       
        favLbl.textColor = CustomColors.lightgrayColor
        let img2 = UIImage(named: "favourite")
        favSel.image = img2
       
        profileLbl.textColor = CustomColors.lightgrayColor
        let img3 = UIImage(named: "profile")
        profileImg.image = img3
        
        
    }
    
    
    @IBAction func favouriteBtnClicked(_ sender: Any) {
        homLbl.textColor = CustomColors.lightgrayColor
        let img1 = UIImage(named: "home")
        homeSel.image = img1
       
        favLbl.textColor = CustomColors.lightredColor
        let img2 = UIImage(named: "favouriteSel")
        favSel.image = img2
       
        profileLbl.textColor = CustomColors.lightgrayColor
        let img3 = UIImage(named: "profile")
        profileImg.image = img3

        self.delegate?.didSelectIndex(at: 1)

    }
    
    
    @IBAction func profileBtnClicked(_ sender: UIButton) {
        homLbl.textColor = CustomColors.lightgrayColor
        let img1 = UIImage(named: "home")
        homeSel.image = img1
       
        favLbl.textColor = CustomColors.lightgrayColor
        let img2 = UIImage(named: "favourite")
        favSel.image = img2
       
        profileLbl.textColor = CustomColors.lightredColor
        let img3 = UIImage(named: "profileSel")
        profileImg.image = img3
        
        self.delegate?.didSelectIndex(at: 2)
    }
    
    
}
