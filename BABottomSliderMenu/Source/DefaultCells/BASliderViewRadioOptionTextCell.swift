//
//  BASliderViewRadioOptionTextCell.swift
//  Lotza4.0
//
//  Created by Betto Akkara on 18/03/21.
//  Copyright © 2021 THE FEDERAL BANK LIMITED. All rights reserved.
//

import UIKit

class BASliderViewRadioOptionTextCell: BASlideViewDefaultTableViewCell {

    public static var selectedIndex : IndexPath?

    @IBOutlet weak var textlbl: UILabel!
    @IBOutlet weak var selectionButton: UIButton!

    @IBAction func selectionButtonAction(_ sender: Any) {
        delegate?.BASliderOptionView(self.cellIdentifier, didSelectRowAt: self.rowIndex, option: self.itemProperties?.first?.text)
    }
    override var itemProperties: [BASliderItemProperties]?{
        didSet{
            textlbl.text = itemProperties?.first?.text
            textlbl.textColor = itemProperties?.first?.textColour
            textlbl.font = itemProperties?.first?.font
            textlbl.textAlignment = itemProperties?.first?.textAlignment ?? NSTextAlignment.center
        }
    }

    @IBOutlet weak var radioBorderView: UIView!
    @IBOutlet weak var selectedView: UIView!

    var isOptionSelected : Bool? = false{
        didSet{
            if self.isOptionSelected == true{
                self.selectedView.isHidden = false
            }else{
                self.selectedView.isHidden = true
            }
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectedView.isHidden = true
        BASliderViewRadioOptionTextCell.selectedIndex = nil
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
}
