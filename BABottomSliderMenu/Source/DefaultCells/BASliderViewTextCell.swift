//
//  BASliderViewTextCell.swift
//  BASlider
//
//  Created by Betto akkara on 16/04/20.
//  Copyright © 2020 Betto. All rights reserved.
//

import UIKit

class BASliderViewTextCell: BASlideViewDefaultTableViewCell {

    @IBOutlet weak var textlbl: UILabel!
    
    
    override var itemProperties: [BASliderItemProperties]?{
        didSet{
            textlbl.text = itemProperties?.first?.text
            textlbl.textColor = itemProperties?.first?.textColour
            textlbl.font = itemProperties?.first?.font
            textlbl.textAlignment = itemProperties?.first?.textAlignment ?? NSTextAlignment.center
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
