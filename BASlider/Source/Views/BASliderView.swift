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
    private static var sliderViewCV : BASliderViewController?
    func show(title: String = "",titleColor : UIColor = .black ,sliderViewCells: [BASliderViewCellProperties], dismissOnTap: Bool = true, isHeaderEnabled: Bool = true,isBackgroungImgEnabled: Bool = false, controller : UIViewController, delegate : Any? = nil) {
        let vc = BASliderViewController(nibName: "BASliderViewController", bundle: nil)
        vc.modalPresentationStyle = .overFullScreen
        vc.dismissOnTap = dismissOnTap
        vc.titleString = title
        vc.titleColour = titleColor
        vc.isHeaderEnabled = isHeaderEnabled
        vc.isbgImgEnabled = isBackgroungImgEnabled
        vc.sliderViewCells = sliderViewCells
        vc.delegate = delegate == nil ? (controller as? BASliderViewDelegates) : (delegate as? BASliderViewDelegates)
        BASliderView.sliderViewCV = vc
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            controller.present(vc, animated: false, completion: nil)
        }
    }
    func dismiss(){
        DispatchQueue.main.async {
            BASliderView.sliderViewCV?.BASliderDismiss()
        }
    }
}
