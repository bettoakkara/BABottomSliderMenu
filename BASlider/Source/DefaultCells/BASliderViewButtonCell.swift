//
//  BASliderViewButtonCell.swift
//  BASlider
//
//  Created by Betto akkara on 16/04/20.
//  Copyright © 2020 Betto. All rights reserved.
//

import UIKit


class BASliderViewButtonCell: BASlideViewDefaultTableViewCell {

    @IBOutlet weak var button: BASlideViewActionButton!
    @IBOutlet weak var buttonHeight: NSLayoutConstraint!
    
    override var itemProperties: [BASliderItemProperties]?{
        didSet{
            button.setTitle(itemProperties?.first?.text, for: .normal)
            button.setTitleColor(itemProperties?.first?.textColour, for: .normal)
            button.titleLabel?.font = itemProperties?.first?.font
            button.backgroundColor = itemProperties?.first?.backgroundColour
            button.layer.borderWidth = itemProperties?.first?.borderWidth ?? 0
            button.layer.borderColor = (itemProperties?.first?.borderColor ?? .white).cgColor
            button.layer.cornerRadius = itemProperties?.first?.cornerRadius ?? 0
            if itemProperties?.first?.desiredelementHeight != 0{
                buttonHeight.constant = itemProperties?.first?.desiredelementHeight ?? 45
            }
            button.itemID = itemProperties?.first?.itemID
            
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
    
    
    @IBAction func buttonOnClick(_ sender: Any) {
        delegate?.BASliderView(self.cellIdentifier, itemId: self.button.itemID)
    }
    
}
