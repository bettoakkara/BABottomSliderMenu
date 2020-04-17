//
//  BASliderViewTwoButtonCell.swift
//  BASlider
//
//  Created by Betto akkara on 17/04/20.
//  Copyright © 2020 Betto. All rights reserved.
//

import UIKit

class BASliderViewTwoButtonCell: BASlideViewDefaultTableViewCell {

    @IBOutlet weak var leftBtn: BASlideViewActionButton!
    @IBOutlet weak var rightBtn: BASlideViewActionButton!
    
    
    override var itemProperties: [BASliderItemProperties]?{
        didSet{
            leftBtn.setTitle(itemProperties?.first?.text, for: .normal)
            leftBtn.setTitleColor(itemProperties?.first?.textColour, for: .normal)
            leftBtn.titleLabel?.font = itemProperties?.first?.font
            leftBtn.backgroundColor = itemProperties?.first?.backgroundColour
            leftBtn.layer.borderWidth = itemProperties?.first?.borderWidth ?? 0
            leftBtn.layer.borderColor = (itemProperties?.first?.borderColor ?? .white).cgColor
            leftBtn.layer.cornerRadius = itemProperties?.first?.cornerRadius ?? 0
            leftBtn.itemID = itemProperties?.first?.itemID
            
            rightBtn.setTitle(itemProperties?.last?.text, for: .normal)
            rightBtn.setTitleColor(itemProperties?.last?.textColour, for: .normal)
            rightBtn.titleLabel?.font = itemProperties?.last?.font
            rightBtn.backgroundColor = itemProperties?.last?.backgroundColour
            rightBtn.layer.borderWidth = itemProperties?.last?.borderWidth ?? 0
            rightBtn.layer.borderColor = (itemProperties?.last?.borderColor ?? .white).cgColor
            rightBtn.layer.cornerRadius = itemProperties?.last?.cornerRadius ?? 0
            rightBtn.itemID = itemProperties?.last?.itemID
            
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
    
    @IBAction func leftBtnOnClick(_ sender: Any) {
         delegate?.BASliderView(self.cellIdentifier, itemId: self.leftBtn.itemID)
    }
    
    @IBAction func rightBtnOnClick(_ sender: Any) {
         delegate?.BASliderView(self.cellIdentifier, itemId: self.rightBtn.itemID)
    }
    
}
