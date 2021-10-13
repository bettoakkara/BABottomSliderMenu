//
//  BASliderViewController.swift
//  BASlider
//
//  Created by Betto akkara on 16/04/20.
//  Copyright © 2020 Betto. All rights reserved.
//

import UIKit

class BASliderViewController: UIViewController, UIGestureRecognizerDelegate {
    
    @IBOutlet weak var transparentView: UIView!
    @IBOutlet weak var tableView: SelfSizedTableView!

    @IBOutlet weak var topView: UIView!

    private var screenSize = UIScreen.main.bounds.size
    private var height: CGFloat = 300
    weak var delegate: BASliderViewDelegates?
    
    //MARK:- BASliderView Properties
    var sliderViewCells : [BASliderViewCellProperties] = []
    var isHeaderEnabled : Bool = true
    var dismissOnTap : Bool = true
    var titleString : String = ""
    var titleColour : UIColor = .black
    var isbgImgEnabled : Bool = false
    //MARK:-
    private var backGroundImg : UIImage = UIImage(named: "img-bs-background") ?? UIImage()
    //MARK:-
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.isScrollEnabled = true
        tableView.bounces = false
        tableView.delegate = self
        tableView.dataSource = self
        // Header Cell
        tableView.register(UINib(nibName: BASliderViewHeaderCell.headerCellIdentifier, bundle: BABottomSliderMenuBundle), forCellReuseIdentifier: BASliderViewHeaderCell.headerCellIdentifier)
        // Other Cells
        sliderViewCells.forEach { (sliderViewCellProperties) in
            self.cellRegister(sliderViewCellProperties)
        }
        sliderViewCells.sort{ $0.index! > $1.index! }
        if isbgImgEnabled {
            self.tableView.backgroundColor = UIColor.clear
            self.tableView.backgroundView = UIImageView(image: backGroundImg)
            self.titleColour = .white
        }
        if isHeaderEnabled {
            sliderViewCells.append(BASliderViewCellProperties(nibName: BASliderViewHeaderCell.headerCellIdentifier, cellIdentifier: .headerCell, index: 0, itemProperties: [BASliderItemProperties(
                itemID: 369,
                text: titleString,
                font: UIFont.systemFont(ofSize: 16, weight: .bold),
                textColour: titleColour,
                textAlignment: .left,
                imageName: isbgImgEnabled ? "icBACrossWhite" : "icBACross"
            )]))
        }
        
        sliderViewCells.reverse()
        tableView.tableFooterView = UIView()
        tableView.reloadData()
    }

    override func viewDidAppear(_ animated: Bool) {
        self.screenSize = transparentView.bounds.size
        transparentView.backgroundColor = UIColor.black.withAlphaComponent(0.0)
        tableView.frame = CGRect(x: 10, y: self.screenSize.height, width: self.screenSize.width - 20, height: height)
        self.topView.frame = CGRect(x: 10, y: self.screenSize.height, width: self.screenSize.width - 20, height: height)
        self.tableView.reloadData()
        if dismissOnTap{
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(onClickTransparentView))
            tapGesture.cancelsTouchesInView = false
            self.transparentView.addGestureRecognizer(tapGesture)

        }

        self.topView.alpha = 0.0
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .allowAnimatedContent, animations: {

            self.tableView.isHidden = false
            self.topView.isHidden = true

            self.transparentView.backgroundColor = UIColor.black.withAlphaComponent(0.4)

            var notchHeight : CGFloat = 0

            if UIDevice().userInterfaceIdiom == .phone {
                if UIScreen.main.nativeBounds.height > 1780 {
                    notchHeight = 44
                }else{
                    notchHeight = 0
                }
            }

            if (self.tableView.tableFooterView?.frame.minY ?? 0) + notchHeight > (self.screenSize.height * 0.85){
                self.height = (self.screenSize.height * 0.85) + notchHeight

                self.topView.isHidden = false

                self.tableView.frame = CGRect(x: 10, y: self.screenSize.height - self.height, width: self.screenSize.width - 20, height: self.height)

                UIView.transition(with: self.topView, duration: 0.3, options: .beginFromCurrentState) {
                    self.topView.frame = CGRect(x: 10, y: (self.screenSize.height - (self.tableView.bounds.height + 20)), width: self.tableView.bounds.width, height: 20)

                    self.roundBASliderViewCorners(view: self.topView, corners: [.topLeft, .topRight] , radius: 20)
                    self.topView.alpha = 1.0

                } completion: { (complt) in

                }


            }else{
                self.height = (self.tableView.tableFooterView?.frame.minY ?? 0) + notchHeight

                self.topView.isHidden = true

                self.tableView.frame = CGRect(x: 10, y: self.screenSize.height - self.height, width: self.screenSize.width - 20, height: self.height)

                UIView.transition(with: self.topView, duration: 0.3, options: .beginFromCurrentState) {
                    self.topView.frame = CGRect(x: 10, y: (self.screenSize.height - (self.tableView.bounds.height + 20)), width: self.tableView.bounds.width, height: 20)

                    self.roundBASliderViewCorners(view: self.tableView, corners: [.topLeft, .topRight] , radius: 20)


                } completion: { (complt) in

                }


            }


        }, completion: { _ in

        })

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
   

    @objc private func onClickTransparentView() {

        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, options: .curveEaseInOut, animations: {
            self.transparentView.backgroundColor = UIColor.black.withAlphaComponent(0.0)
            self.topView.frame = CGRect(x: 10, y: self.screenSize.height, width: self.screenSize.width - 20, height: self.height)
            self.tableView.frame = CGRect(x: 10, y: self.screenSize.height, width: self.screenSize.width - 20, height: self.height)
        }, completion: { _ in
            self.delegate?.BASliderDidDismiss() // New requirements
            self.dismiss(animated: false, completion: nil)
        })
    }

}


extension BASliderViewController {
    private func roundBASliderViewCorners(view: UIView, corners:UIRectCorner, radius: CGFloat) {

        let path = UIBezierPath(roundedRect: view.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        view.layer.mask = mask

    }
}


extension BASliderViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sliderViewCells.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: self.sliderViewCells[indexPath.row].cellIdentifier!.rawValue, for: indexPath) as? BASlideViewDefaultTableViewCell else {fatalError("Unable to deque cell")}
        cell.delegate = self
        cell.cellIdentifier = self.sliderViewCells[indexPath.row].cellIdentifier
        cell.rowIndex = indexPath
        cell.itemProperties = self.sliderViewCells[indexPath.row].itemProperties as? [BASliderItemProperties]
        if cell.cellIdentifier == BASliderViewCellIdetifiers.radioOptionTextCell, let optionCell = cell as? BASliderViewRadioOptionTextCell{

            if let selectedIndex = BASliderViewRadioOptionTextCell.selectedIndex, selectedIndex == indexPath{
                optionCell.selectedView.isHidden = false
            }else{
                optionCell.selectedView.isHidden = true
            }

        }

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        DispatchQueue.main.async {
            let cell = self.sliderViewCells[indexPath.row]

            if cell.cellIdentifier != BASliderViewCellIdetifiers.radioOptionTextCell{
                self.delegate?.BASliderView(cell.cellIdentifier, didSelectRowAt: indexPath)
            }

        }
    }


}

extension BASliderViewController : BASliderProtocols{
    func BASliderOptionView(_ cellIdentifier: BASliderViewCellIdetifiers?, didSelectRowAt indexPath: IndexPath?, option: String?) {
        DispatchQueue.main.async {

            if let prevSelectedIndex = BASliderViewRadioOptionTextCell.selectedIndex{
                let cell = self.sliderViewCells[prevSelectedIndex.row]

                if cell.cellIdentifier == BASliderViewCellIdetifiers.radioOptionTextCell, let optionCell = self.tableView.cellForRow(at: prevSelectedIndex) as? BASliderViewRadioOptionTextCell{
                    optionCell.isOptionSelected = false
                }
            }

            BASliderViewRadioOptionTextCell.selectedIndex = indexPath

            let cell = self.sliderViewCells[indexPath?.row ?? 0]

            if cell.cellIdentifier == BASliderViewCellIdetifiers.radioOptionTextCell, let optionCell = self.tableView.cellForRow(at: indexPath!) as? BASliderViewRadioOptionTextCell{
                optionCell.isOptionSelected = true
            }

            self.delegate?.BASliderOptionView(cellIdentifier, didSelectRowAt: indexPath, option: option)

        }
    }

    func BASliderView(_ cellIdentifier: BASliderViewCellIdetifiers?, itemId: Int?) {
        self.delegate?.BASliderView(cellIdentifier, itemId: itemId)
    }
    
    func BASliderDismiss() {
        self.onClickTransparentView()
        self.delegate?.BASliderDidDismiss()
    }
}

public func delay(_ seconds: Double, completion: @escaping () -> ()) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
        completion()
    }
}
