//
//  ViewController.swift
//  BASlider
//
//  Created by Betto akkara on 16/04/20.
//  Copyright © 2020 Betto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dfvfvc(_ sender: Any) {
        
        let cell1 = BASliderViewCellProperties(
            nibName: BASliderViewCellIdetifiers.imageCell.rawValue,
            cellIdentifier: BASliderViewCellIdetifiers.imageCell,
            index: 1,
            itemProperties: [BASliderItemProperties(
                itemID: 10001,
                text: "",
                font: UIFont.systemFont(ofSize: 12, weight: .regular),
                textColour: .black,
                textAlignment: .center,
                backgroundColour: .white,
                desiredHeight: 50,
                imageName: "icCross"
            )]
        )
        
        let cell2 = BASliderViewCellProperties(
            nibName: BASliderViewCellIdetifiers.textCell.rawValue,
            cellIdentifier: BASliderViewCellIdetifiers.textCell,
            index: 2,
            itemProperties: [BASliderItemProperties(
                itemID: 10002,
                text: "This is a meting to be recomented scdjlskmc sjkc skc skdc sdc s cskc skcted scdjlskmc sjkc skc skdc sdc s cskc skcted scskdc sdc s cskc skcted scdjlskmc sjkc skc skdc sdc s cskc skcted scdjlskmc sjkc skc skdc sdc s cskc skcted scdjlskmc sjkc skc skdc sdc s cskc skcted scdjlskmc sjkc skc skdc sdc s cskc skcted scdjlskmc sjkc skc skdc sdc s cskc skcted scdjlskmc sjkc skc skdc sdc s cskc skcted scdjlskmc sjkc skc skdc sdc s cskc skcted scdjlskmc sjkc skc skdc sdc s cskc skcted scdjlskmc sjkc skc skdc sdc s cskc skcted scdjlskmc sjkc skc skdc sdc s cskc skcted scdjlskmc sjkc skc skdc sdc s cskc skcted scdjlskmc sjkc skc skdc sdc s cskc skcted scdjlskmc sjkc skc skdc sdc s cskc skc",
                font: UIFont.systemFont(ofSize: 12, weight: .regular),
                textColour: .black,
                textAlignment: .center
            )]
        )

        let cell3 = BASliderViewCellProperties(
            nibName: BASliderViewCellIdetifiers.twoButtonCell.rawValue,
            cellIdentifier: BASliderViewCellIdetifiers.twoButtonCell,
            index: 4,
            itemProperties: [BASliderItemProperties(
                itemID: 10009,
                text: "Proceed",
                font: UIFont.systemFont(ofSize: 18, weight: .semibold),
                textColour: .white,
                backgroundColour: .purple,
                cornerRadius: 6
            ),BASliderItemProperties(
                itemID: 10010,
                text: "Cancel",
                font: UIFont.systemFont(ofSize: 18, weight: .semibold),
                textColour: .purple,
                backgroundColour: .white,
                borderColor : .purple,
                boarderWidth : 1,
                cornerRadius: 6
            )]
        )
        let cell4 = BASliderViewCellProperties(
            nibName: BASliderViewCellIdetifiers.buttonCell.rawValue,
                   cellIdentifier: BASliderViewCellIdetifiers.buttonCell,
                   index: 3,
                   itemProperties: [BASliderItemProperties(
                       itemID: 10011,
                       text: "Block",
                       font: UIFont.systemFont(ofSize: 18, weight: .semibold),
                       textColour: .link,
                       backgroundColour: .white,
                       desiredHeight: 20,
                       cornerRadius: 6
                   )]
               )
        let sliderViewCells = [cell1, cell2, cell3, cell4]  // [BASliderViewCellProperties]
        
        BASlider.show(title: "Alert", sliderViewCells: sliderViewCells, dismissOnTap: false, isHeaderEnabled: true, controller: self)
        //show(sliderViewCells: sliderViewCells, controller: self)
        
    }
    
}


extension ViewController : BASliderViewDelegates{
    func BASliderView(_ cellIdentifier: BASliderViewCellIdetifiers?, itemId: Int?) {
        print(cellIdentifier?.rawValue,itemId)
    }
    func BASliderView(_ cellIdentifier: BASliderViewCellIdetifiers?, didSelectRowAt indexPath: IndexPath) {
        print(cellIdentifier?.rawValue)
    }
    func BASliderDidDismiss() {
        print("BASliderDidDismiss")
    }
}



