//
//  BASliderViewCellProperties.swift
//  BASlider
//
//  Created by Betto akkara on 16/04/20.
//  Copyright © 2020 Betto. All rights reserved.
//

import Foundation
import UIKit

public struct BASliderViewCellProperties {
    
    var nibName : String?
    var cellIdentifier : BASliderViewCellIdetifiers?
    var index : Int?
    var itemProperties : [BASliderItemProperties?]

    public init(
        nibName : String?,
        cellIdentifier : BASliderViewCellIdetifiers?,
        index : Int?,
        itemProperties : [BASliderItemProperties?]
    ){
        self.nibName = nibName
        self.cellIdentifier = cellIdentifier
        self.index = index
        self.itemProperties = itemProperties
    }

}
