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
    frame = CGRect(x: 0, y: 0, width: 50, height: 50)
    layer.masksToBounds = true
    layer.cornerRadius = frame.size.height / 2
    backgroundColor = .red
    textColor = .white
    textAlignment = .center
  }
}
