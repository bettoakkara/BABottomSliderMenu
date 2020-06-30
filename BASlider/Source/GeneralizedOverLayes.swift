//
//  GeneralizedOverLayes.swift
//  BASlider
//
//  Created by Betto akkara on 13/05/20.
//  Copyright © 2020 Betto akkara. All rights reserved.
//

import Foundation
import UIKit


class BASliderPresentor {
    
    /**
     - LEFT BUTTON IS BORDERED
     - RIGHT BUTTON IS FILLED
     - Parameters:
     - message: message to dispaly
     - btnTitle1: Left button title
     - btnTitle2: Right button title
     - action1: btn1 Action ID
     - action2: btn2 Action ID
     - delegate: delegate view
     - controller: presenting controller
     */
    class func confirmationActionOverlay(titleStr : String = "", message: String = "",btnTitle1 : String = "", btnTitle2 : String = "", action1 : Int, action2 : Int, delegate: Any?, controller : UIViewController) {
        
        let messageTxt = BASliderViewCellProperties(
            nibName: BASliderViewCellIdetifiers.textCell.rawValue,
            cellIdentifier: BASliderViewCellIdetifiers.textCell,
            index: 1,
            itemProperties: [BASliderItemProperties(
                itemID: 0,
                text: message,
                font: UIFont.systemFont(ofSize: 12, weight: .regular),
                textColour: .black,
                textAlignment: .left,
                backgroundColour: .white
                )]
        )
        let actionButtons = BASliderViewCellProperties(
            nibName: BASliderViewCellIdetifiers.twoButtonCell.rawValue,
            cellIdentifier: BASliderViewCellIdetifiers.twoButtonCell,
            index: 2,
            itemProperties: [
                BASliderItemProperties(
                    itemID: action1,
                    text: btnTitle1,
                    font: UIFont.systemFont(ofSize: 16, weight: .semibold),
                    textColour: .blue,
                    textAlignment: .center,
                    backgroundColour: .white,
                    borderColor : .blue,
                    boarderWidth: 1,
                    cornerRadius: 4
                ),
                BASliderItemProperties(
                    itemID: action2,
                    text: btnTitle2,
                    font: UIFont.systemFont(ofSize: 16, weight: .semibold),
                    textColour: .white,
                    textAlignment: .center,
                    backgroundColour: .blue,
                    borderColor : .blue,
                    boarderWidth: 1,
                    cornerRadius: 4
                )
            ]
        )
        
        let sliderViewCells = [messageTxt, actionButtons]
        BASlider.show(title: titleStr, titleColor:.blue,  sliderViewCells: sliderViewCells, dismissOnTap: true, isHeaderEnabled: true, controller: controller, delegate : delegate)
        
    }
    
    ///Order Of OverlayElements
    /// Heading
    /// Image
    /// Message
    /// Action Button
    /// - Parameters:
    ///   - titleStr: Heading
    ///   - image: image
    ///   - message: Message to show
    ///   - btnTitle: Button title
    ///   - action: Action ID
    ///   - delegate: delegate
    ///   - controller: presenting controller
    class func alertOverlay(titleStr : String = "", imageName : String = "Alert", message: String = "",btnTitle : String = "", action : Int, delegate: Any?, controller : UIViewController) {
        let imageCell = BASliderViewCellProperties(
            nibName: BASliderViewCellIdetifiers.imageCell.rawValue,
            cellIdentifier: BASliderViewCellIdetifiers.imageCell,
            index: 1,
            itemProperties: [BASliderItemProperties(
                itemID: 0,
                backgroundColour: .white,
                desiredHeight: 80,
                imageName: imageName
                )]
        )
        
        let messageTxt = BASliderViewCellProperties(
            nibName: BASliderViewCellIdetifiers.textCell.rawValue,
            cellIdentifier: BASliderViewCellIdetifiers.textCell,
            index: 2,
            itemProperties: [BASliderItemProperties(
                itemID: 0,
                text: message,
                font: UIFont.systemFont(ofSize: 14, weight: .regular),
                textColour: .black,
                textAlignment: .center,
                backgroundColour: .white
                )]
        )
        
        let actionButtons = BASliderViewCellProperties(
            nibName: BASliderViewCellIdetifiers.buttonCell.rawValue,
            cellIdentifier: BASliderViewCellIdetifiers.buttonCell,
            index: 3,
            itemProperties: [
                BASliderItemProperties(
                    itemID: action,
                    text: btnTitle,
                    font: UIFont.systemFont(ofSize: 16, weight: .semibold),
                    textColour: .white,
                    textAlignment: .center,
                    backgroundColour: .blue,
                    borderColor : .blue,
                    boarderWidth: 1,
                    cornerRadius: 4
                )
            ]
        )
        
        let sliderViewCells = [imageCell, messageTxt, actionButtons]
        BASlider.show(title: titleStr, titleColor:.blue,  sliderViewCells: sliderViewCells, dismissOnTap: true, isHeaderEnabled: true, controller: controller, delegate : delegate)
    }
    
    
    ///Order Of OverlayElements
    /// Heading
    /// Message
    /// Action Button
    /// - Parameters:
    ///   - titleStr: Heading
    ///   - message: Message to show
    ///   - btnTitle: Button title
    ///   - action: Action ID
    ///   - delegate: delegate
    ///   - controller: presenting controller
    class func permissionOverlay(titleStr : String = "", message: String = "",btnTitle : String = "", action : Int, delegate: Any?, controller : UIViewController) {
        let messageTxt = BASliderViewCellProperties(
            nibName: BASliderViewCellIdetifiers.textCell.rawValue,
            cellIdentifier: BASliderViewCellIdetifiers.textCell,
            index: 1,
            itemProperties: [BASliderItemProperties(
                itemID: 0,
                text: message,
                font: UIFont.systemFont(ofSize: 14, weight: .regular),
                textColour: .black,
                textAlignment: .left,
                backgroundColour: .white
                )]
        )
        
        let actionButtons = BASliderViewCellProperties(
            nibName: BASliderViewCellIdetifiers.buttonCell.rawValue,
            cellIdentifier: BASliderViewCellIdetifiers.buttonCell,
            index: 2,
            itemProperties: [
                BASliderItemProperties(
                    itemID: action,
                    text: btnTitle,
                    font: UIFont.systemFont(ofSize: 16, weight: .semibold),
                    textColour: .white,
                    textAlignment: .center,
                    backgroundColour: .blue,
                    borderColor : .blue,
                    boarderWidth: 1,
                    cornerRadius: 4
                )
            ]
        )
        
        let sliderViewCells = [messageTxt, actionButtons]
        BASlider.show(title: titleStr, titleColor:.blue,  sliderViewCells: sliderViewCells, dismissOnTap: true, isHeaderEnabled: true, controller: controller, delegate : delegate)
    }
    
    ///Order Of OverlayElements
    /// Heading
    /// Image
    /// Title
    /// Message
    /// Action Button
    /// - Parameters:
    ///   - titleStr: Heading
    ///   - image: image
    ///   - heading: Title to show
    ///   - message: Message to show
    ///   - btnTitle: Button title
    ///   - action: Action ID
    ///   - delegate: delegate
    ///   - controller: presenting controller
    class func alertOverlay(titleStr : String = "", heading : String = "", isBackgroundimgEnabled : Bool = false , imageName : String = "Alert", message: String = "",btnTitle : String = "", action : Int, delegate: Any?, controller : UIViewController) {
        let imageCell = BASliderViewCellProperties(
            nibName: BASliderViewCellIdetifiers.imageCell.rawValue,
            cellIdentifier: BASliderViewCellIdetifiers.imageCell,
            index: 1,
            itemProperties: [BASliderItemProperties(
                itemID: 0,
                backgroundColour: .white,
                desiredHeight: 80,
                imageName: imageName
                )]
        )
        let headingTxt = BASliderViewCellProperties(
            nibName: BASliderViewCellIdetifiers.textCell.rawValue,
            cellIdentifier: BASliderViewCellIdetifiers.textCell,
            index: 2,
            itemProperties: [BASliderItemProperties(
                itemID: 0,
                text: heading,
                font: UIFont.systemFont(ofSize: 16, weight: .bold),
                textColour: .black,
                textAlignment: .center,
                backgroundColour: .white
                )]
        )
        let messageTxt = BASliderViewCellProperties(
            nibName: BASliderViewCellIdetifiers.textCell.rawValue,
            cellIdentifier: BASliderViewCellIdetifiers.textCell,
            index: 3,
            itemProperties: [BASliderItemProperties(
                itemID: 0,
                text: message,
                font: UIFont.systemFont(ofSize: 12, weight: .regular),
                textColour: .black,
                textAlignment: .center,
                backgroundColour: .white
                )]
        )
        
        let actionButtons = BASliderViewCellProperties(
            nibName: BASliderViewCellIdetifiers.buttonCell.rawValue,
            cellIdentifier: BASliderViewCellIdetifiers.buttonCell,
            index: 4,
            itemProperties: [
                BASliderItemProperties(
                    itemID: action,
                    text: btnTitle,
                    font: UIFont.systemFont(ofSize: 16, weight: .semibold),
                    textColour: .white,
                    textAlignment: .center,
                    backgroundColour: .blue,
                    borderColor : .blue,
                    boarderWidth: 1,
                    cornerRadius: 4
                )
            ]
        )
        
        let sliderViewCells = [imageCell, headingTxt, messageTxt, actionButtons]
        BASlider.show(title: titleStr, titleColor:.blue,  sliderViewCells: sliderViewCells, dismissOnTap: true, isHeaderEnabled: true,isBackgroungImgEnabled: isBackgroundimgEnabled, controller: controller, delegate : delegate)
    }
    
    
    ///Order Of OverlayElements
       /// Heading
       /// Image
       /// Title
       /// Message
       /// - Parameters:
       ///   - titleStr: Heading
       ///   - image: image
       ///   - heading: Title to show
       ///   - message: Message to show
       ///   - delegate: delegate
       ///   - controller: presenting controller
       class func alertOverlay(titleStr : String = "", heading : String = "", isBackgroundimgEnabled : Bool = false , imageName : String = "Alert", message: String = "", delegate: Any?, controller : UIViewController) {
           let imageCell = BASliderViewCellProperties(
               nibName: BASliderViewCellIdetifiers.imageCell.rawValue,
               cellIdentifier: BASliderViewCellIdetifiers.imageCell,
               index: 1,
               itemProperties: [BASliderItemProperties(
                   itemID: 0,
                   backgroundColour: .white,
                   desiredHeight: 80,
                   imageName: imageName
                   )]
           )
           let headingTxt = BASliderViewCellProperties(
               nibName: BASliderViewCellIdetifiers.textCell.rawValue,
               cellIdentifier: BASliderViewCellIdetifiers.textCell,
               index: 2,
               itemProperties: [BASliderItemProperties(
                   itemID: 0,
                   text: heading,
                   font: UIFont.systemFont(ofSize: 16, weight: .bold),
                   textColour: isBackgroundimgEnabled ? .white : .black,
                   textAlignment: .center,
                   backgroundColour: .white
                   )]
           )
           let messageTxt = BASliderViewCellProperties(
               nibName: BASliderViewCellIdetifiers.textCell.rawValue,
               cellIdentifier: BASliderViewCellIdetifiers.textCell,
               index: 3,
               itemProperties: [BASliderItemProperties(
                   itemID: 0,
                   text: message,
                   font: UIFont.systemFont(ofSize: 12, weight: .regular),
                   textColour: isBackgroundimgEnabled ? .white : .black,
                   textAlignment: .center,
                   backgroundColour: .white
                   )]
           )
           
           let sliderViewCells = [imageCell, headingTxt, messageTxt]
           BASlider.show(title: titleStr, titleColor:.blue,  sliderViewCells: sliderViewCells, dismissOnTap: true, isHeaderEnabled: true,isBackgroungImgEnabled: isBackgroundimgEnabled, controller: controller, delegate : delegate)
       }
        
    
    /**
     - LEFT BUTTON IS BORDERED
     - RIGHT BUTTON IS FILLED
     - Parameters:
     - heading: Title to be shown
     - message: message to dispaly
     - btnTitle1: Left button title
     - btnTitle2: Right button title
     - action1: btn1 Action ID
     - action2: btn2 Action ID
     - delegate: delegate view
     - controller: presenting controller
     */
    class func alertTwoActionOverlay(titleStr : String = "", imageName:String = "Alert", heading : String = "",message: String = "",btnTitle1 : String = "", btnTitle2 : String = "", action1 : Int, action2 : Int, delegate: Any?, controller : UIViewController) {
        
        let imageCell = BASliderViewCellProperties(
            nibName: BASliderViewCellIdetifiers.imageCell.rawValue,
            cellIdentifier: BASliderViewCellIdetifiers.imageCell,
            index: 1,
            itemProperties: [BASliderItemProperties(
                itemID: 0,
                backgroundColour: .white,
                desiredHeight: 70,
                imageName: imageName
                )]
        )
        
        let tileTxt = BASliderViewCellProperties(
            nibName: BASliderViewCellIdetifiers.textCell.rawValue,
            cellIdentifier: BASliderViewCellIdetifiers.textCell,
            index: 2,
            itemProperties: [BASliderItemProperties(
                itemID: 0,
                text: heading,
                font: UIFont.systemFont(ofSize: 16, weight: .semibold),
                textColour: .black,
                textAlignment: .center,
                backgroundColour: .white
                )]
        )
        
        let messageTxt = BASliderViewCellProperties(
            nibName: BASliderViewCellIdetifiers.textCell.rawValue,
            cellIdentifier: BASliderViewCellIdetifiers.textCell,
            index: 3,
            itemProperties: [BASliderItemProperties(
                itemID: 0,
                text: message,
                font: UIFont.systemFont(ofSize: 12, weight: .regular),
                textColour: .black,
                textAlignment: .center,
                backgroundColour: .white
                )]
        )
        let actionButtons = BASliderViewCellProperties(
            nibName: BASliderViewCellIdetifiers.twoButtonCell.rawValue,
            cellIdentifier: BASliderViewCellIdetifiers.twoButtonCell,
            index: 4,
            itemProperties: [
                BASliderItemProperties(
                    itemID: action1,
                    text: btnTitle1,
                    font: UIFont.systemFont(ofSize: 16, weight: .semibold),
                    textColour: .blue,
                    textAlignment: .center,
                    backgroundColour: .white,
                    borderColor : .blue,
                    boarderWidth: 1,
                    cornerRadius: 4
                ),
                BASliderItemProperties(
                    itemID: action2,
                    text: btnTitle2,
                    font: UIFont.systemFont(ofSize: 16, weight: .semibold),
                    textColour: .white,
                    textAlignment: .center,
                    backgroundColour: .blue,
                    borderColor : .blue,
                    boarderWidth: 1,
                    cornerRadius: 4
                )
            ]
        )
        
        let sliderViewCells = [imageCell,tileTxt,messageTxt, actionButtons]
        BASlider.show(title: titleStr, titleColor:.blue,  sliderViewCells: sliderViewCells, dismissOnTap: true, isHeaderEnabled: true, controller: controller, delegate : delegate)
        
    }
    
    
    
}
