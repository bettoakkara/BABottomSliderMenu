//
//  SelfSizedTableView.swift
//  BASlider
//
//  Created by Betto akkara on 16/04/20.
//  Copyright © 2020 Betto. All rights reserved.
//

import Foundation
import UIKit

class SelfSizedTableView: UITableView {
  private var maxHeight: CGFloat = UIScreen.main.bounds.size.height - 64
  
  override func reloadData() {
    super.reloadData()
    self.invalidateIntrinsicContentSize()
    //heightConstraint.constant = tableView.contentSize.height
    self.layoutIfNeeded()
  }
  
  override var intrinsicContentSize: CGSize {
    let height = min(contentSize.height, maxHeight)
    return CGSize(width: contentSize.width, height: height)
  }
}
