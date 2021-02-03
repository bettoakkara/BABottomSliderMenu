//
//  ViewController.swift
//  BABottomSliderMenuExample
//
//  Created by Betto Akkara on 03/02/21.
//

import UIKit
import BABottomSliderMenu

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showBottomSlider(_ sender: Any) {

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
                imageName: "image"
            )]
        )

        let cell2 = BASliderViewCellProperties(
            nibName: BASliderViewCellIdetifiers.textCell.rawValue,
            cellIdentifier: BASliderViewCellIdetifiers.textCell,
            index: 2,
            itemProperties: [BASliderItemProperties(
                itemID: 10002,
                text: "This is a Sample text.",
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
                       text: "link",
                       font: UIFont.systemFont(ofSize: 12, weight: .light),
                       textColour: .link,
                       backgroundColour: .white,
                       desiredHeight: 20,
                       cornerRadius: 6
                   )]
               )

        let sliderViewCells = [cell1, cell2, cell3, cell4]
        BASlider.show(title: "Alert", sliderViewCells: sliderViewCells, dismissOnTap: false, isHeaderEnabled: true, controller: self)

    }

}


extension ViewController : BASliderViewDelegates{
    func BASliderView(_ cellIdentifier: BASliderViewCellIdetifiers?, itemId: Int?) {

        BASlider.dismiss()

        print(cellIdentifier?.rawValue as Any,itemId!)
        // Handle your cases here,

        //        switch itemId {
        //        case 10010:
        //            break
        //        default:
        //            break
        //        }
    }
    func BASliderView(_ cellIdentifier: BASliderViewCellIdetifiers?, didSelectRowAt indexPath: IndexPath) {
        print(cellIdentifier?.rawValue as Any)
    }
    func BASliderDidDismiss() {
        print("BASliderDidDismiss")
    }
}
