//
//  NewsCardTableViewCell.swift
//  BottomMenuView
//
//  Created by DarkMoon on 06/11/24.
//

import UIKit



class NewsCardTableViewCell: UITableViewCell {
 
    
    @IBOutlet weak var newsTitleLbl: UILabel!
    @IBOutlet weak var newsImg: UIImageView!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var usrName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
