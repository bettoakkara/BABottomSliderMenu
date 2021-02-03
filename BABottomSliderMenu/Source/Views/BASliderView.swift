//
//  BASliderView.swift
//  BASlider
//
//  Created by Betto akkara on 16/04/20.
//  Copyright © 2020 Betto. All rights reserved.
//

import Foundation
import UIKit

public var BASlider = BASliderView.init()
var BABottomSliderMenuBundle = Bundle(for: BASliderView.self)
open class BASliderView {
    private static var sliderViewCV : BASliderViewController?
    public func show(title: String = "",titleColor : UIColor = .black ,sliderViewCells: [BASliderViewCellProperties], dismissOnTap: Bool = true, isHeaderEnabled: Bool = true,isBackgroungImgEnabled: Bool = false, controller : UIViewController, delegate : Any? = nil) {
        let vc = BASliderViewController(nibName: "BASliderViewController", bundle: BABottomSliderMenuBundle)
        vc.modalPresentationStyle = .overFullScreen
        vc.dismissOnTap = dismissOnTap
        vc.titleString = title
        vc.titleColour = titleColor
        vc.isHeaderEnabled = isHeaderEnabled
        vc.isbgImgEnabled = isBackgroungImgEnabled
        vc.sliderViewCells = sliderViewCells
        vc.delegate = delegate == nil ? (controller as? BASliderViewDelegates) : (delegate as? BASliderViewDelegates)
        BASliderView.sliderViewCV = vc
        delay(0.4){
            DispatchQueue.main.async {
                controller.present(vc, animated: false, completion: nil)
            }
        }
    }
    public func dismiss(){
        DispatchQueue.main.async {
            BASliderView.sliderViewCV?.BASliderDismiss()
        }
    }
}
