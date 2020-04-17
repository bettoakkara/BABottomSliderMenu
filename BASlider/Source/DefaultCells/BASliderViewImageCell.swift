//
//  BASliderViewImageCell.swift
//  BASlider
//
//  Created by Betto akkara on 16/04/20.
//  Copyright © 2020 Betto. All rights reserved.
//

import UIKit

class BASliderViewImageCell: BASlideViewDefaultTableViewCell {
    
    @IBOutlet weak var imageview: UIImageView!
    @IBOutlet weak var imageviewHeight: NSLayoutConstraint!
    
    override var itemProperties: [BASliderItemProperties]?{
        didSet{
            imageview.contentMode = .scaleAspectFit
            imageview.image = itemProperties?.first?.image
            imageviewHeight.constant = itemProperties?.first?.desiredelementHeight ?? 0
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
