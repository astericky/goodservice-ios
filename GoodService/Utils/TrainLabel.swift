//
//  TrainLabel.swift
//  GoodService
//
//  Created by Chris Sanders on 5/19/19.
//  Copyright © 2019 Christopher Sanders. All rights reserved.
//

import UIKit

class TrainLabel: UILabel {

  override init(frame: CGRect) {
    super.init(frame: frame)
    setupStyle()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    setupStyle()
  }
  
  func setupStyle() {
    backgroundColor = .red
    layer.masksToBounds = true
    layer.cornerRadius = frame.size.height / 2
  }
}
