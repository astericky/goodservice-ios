//
//  VideoCell.swift
//  GoodService
//
//  Created by Chris Sanders on 5/17/19.
//  Copyright © 2019 Christopher Sanders. All rights reserved.
//

import UIKit

class TrainCell: UITableViewCell {

  @IBOutlet weak var trainLabel: UILabel!
  @IBOutlet weak var trainDesinationLabel: UILabel!
  @IBOutlet weak var serviceStatusLabel: UILabel!
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    backgroundColor = .blue
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    backgroundColor = .blue
  }
}