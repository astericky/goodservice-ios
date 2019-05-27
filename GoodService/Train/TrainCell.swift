//
//  VideoCell.swift
//  GoodService
//
//  Created by Chris Sanders on 5/17/19.
//  Copyright © 2019 Christopher Sanders. All rights reserved.
//

import UIKit


class TrainCell: UITableViewCell {

  let trainLabel: TrainLabel = {
    let label = TrainLabel()
    return label
  }()
  
  let trainDesinationLabel: UILabel = {
    let label = UILabel()
    label.font = UIFont(name: "Helvetica", size: 12)
    return label
  }()
  
  let serviceStatusLabel: UILabel = {
    let label = UILabel()
    label.textAlignment = .right
    label.font = UIFont(name: "Helvetica", size: 14)
    return label
  }()
  
  
  var train: Train? {
    didSet {
      trainLabel.text = train?.name
      if let trainLabelBGColor = train?.color {
        trainLabel.backgroundColor = UIColor(hex: "\(trainLabelBGColor)ff")
      } else {
        trainLabel.backgroundColor = UIColor(hex: "#767676FF")
      }

      trainDesinationLabel.text = train?.alternateName ?? ""
      serviceStatusLabel.text = train?.status
    }
  }
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    addSubview(trainLabel)
    addSubview(trainDesinationLabel)
    addSubview(serviceStatusLabel)
    
    trainLabel.anchor(top: topAnchor,
                      leading: leadingAnchor,
                      bottom: bottomAnchor,
                      trailing: nil,
                      padding: .init(top: 20, left: 16, bottom: 20, right: 0),
                      size: .init(width: 50, height: 50))
    trainDesinationLabel.anchor(top: trainLabel.topAnchor,
                                leading: trainLabel.trailingAnchor,
                                bottom: nil,
                                trailing: trailingAnchor,
                                padding: .init(top: 0, left: 8, bottom: 0, right: 16))
    serviceStatusLabel.anchor(top: nil,
                              leading: trainLabel.trailingAnchor,
                              bottom: bottomAnchor,
                              trailing: trailingAnchor,
                              padding: .init(top: 0, left: 0, bottom: 12, right: 16),
                              size: .init(width: 0, height: 20))
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
}
