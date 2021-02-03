//
//  BASliderItemProperties.swift
//  BASlider
//
//  Created by Betto akkara on 17/04/20.
//  Copyright © 2020 Betto. All rights reserved.
//

import Foundation
import UIKit


public struct BASliderItemProperties {
    
    var itemID : Int  // mandatory
    
    var text : String?
    var font : UIFont?
    var textColour : UIColor?
    var textAlignment : NSTextAlignment?
    var backgroundColour : UIColor?
    var desiredelementHeight : CGFloat?
    var image : UIImage?
    var borderColor : UIColor?
    var borderWidth : CGFloat?
    var cornerRadius : CGFloat?
    var isCustomHeader : Bool?
    
    public init(
    itemID : Int,
    text : String? = "",
    font : UIFont? = UIFont(),
    textColour : UIColor? = .black,
    textAlignment : NSTextAlignment? = .center,
    backgroundColour : UIColor? = .white,
    desiredHeight : CGFloat? = 0,
    imageName : String = "",
    image : UIImage = UIImage(),
    borderColor : UIColor? = .white,
    boarderWidth : CGFloat? = 0,
    cornerRadius : CGFloat? = 0,
    isCustomHeader : Bool? = false
    
    ) {
        
        self.itemID = itemID
        self.text = text
        self.font = font
        self.textColour = textColour
        self.textAlignment = textAlignment
        self.backgroundColour = backgroundColour
        self.desiredelementHeight = desiredHeight
        if imageName == "icBACross"{
            self.image = UIImage(named: imageName, in: BABottomSliderMenuBundle, with: .none)
        }else if imageName != ""{
            self.image = UIImage(named: imageName)
        }else{
            self.image = image
        }
        self.borderColor = borderColor
        self.borderWidth = boarderWidth
        self.cornerRadius = cornerRadius
        self.isCustomHeader = isCustomHeader
        
    }
    
}
