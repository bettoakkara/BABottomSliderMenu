//
//  BASliderView.swift
//  BASlider
//
//  Created by Betto akkara on 16/04/20.
//  Copyright © 2020 Betto. All rights reserved.
//

import Foundation
import UIKit

var BASlider = BASliderView.init()

public class BASliderView {
    
    func show(title: String = "", sliderViewCells: [BASliderViewCellProperties], dismissOnTap: Bool = true, isHeaderEnabled: Bool = true, controller : UIViewController) {
        let vc = BASliderViewController(nibName: "BASliderViewController", bundle: nil)
        vc.modalPresentationStyle = .overFullScreen
        vc.dismissOnTap = dismissOnTap
        vc.titleString = title
        vc.isHeaderEnabled = isHeaderEnabled
        vc.sliderViewCells = sliderViewCells
        vc.delegate = controller as? BASliderViewDelegates
        controller.present(vc, animated: false, completion: nil)
    }
    
}
