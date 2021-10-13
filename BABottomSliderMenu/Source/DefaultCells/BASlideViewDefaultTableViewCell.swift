//
//  BASlideViewDefaultTableViewCell.swift
//  BASlider
//
//  Created by Betto akkara on 16/04/20.
//  Copyright © 2020 Betto. All rights reserved.
//

import UIKit

class BASlideViewDefaultTableViewCell: UITableViewCell {
    
    weak var delegate : BASliderProtocols?
    var itemProperties : [BASliderItemProperties]?
    var rowIndex : IndexPath?
    var cellIdentifier : BASliderViewCellIdetifiers?
    override func awakeFromNib() {
        self.selectionStyle = .none
    }
    
}
