//
//  BASliderViewCellRegister.swift
//  BASlider
//
//  Created by Betto akkara on 16/04/20.
//  Copyright © 2020 Betto. All rights reserved.
//

import Foundation
import UIKit

extension BASliderViewController{

    func cellRegister(_ properties : BASliderViewCellProperties) {
        // Other Cells
        tableView.register(UINib(nibName: properties.nibName ?? "" , bundle: BABottomSliderMenuBundle), forCellReuseIdentifier: properties.cellIdentifier?.rawValue ?? "")
        
    }
    
}

