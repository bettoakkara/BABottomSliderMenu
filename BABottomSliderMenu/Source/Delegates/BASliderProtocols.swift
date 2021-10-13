//
//  BASliderViewDelegates.swift
//  BASlider
//
//  Created by Betto akkara on 17/04/20.
//  Copyright © 2020 Betto. All rights reserved.
//

import Foundation


protocol BASliderProtocols : class{
    func BASliderDismiss()
    func BASliderView(_ cellIdentifier: BASliderViewCellIdetifiers?, itemId : Int?)
    func BASliderOptionView(_ cellIdentifier: BASliderViewCellIdetifiers?, didSelectRowAt indexPath: IndexPath?, option: String?)
}
