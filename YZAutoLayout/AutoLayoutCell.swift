//
//  AutoLayoutCell.swift
//  YZAutoLayout
//
//  Created by 未魔 on 2018/8/23.
//  Copyright © 2018年 未魔. All rights reserved.
//

import UIKit

class AutoLayoutCell: UITableViewCell {

    @IBOutlet weak var cellImageView: UIImageView!
    
    @IBOutlet weak var cellTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
