//
//  TrainDetailViewController.swift
//  GoodService
//
//  Created by Chris Sanders on 5/26/19.
//  Copyright © 2019 Christopher Sanders. All rights reserved.
//

import UIKit

class TrainDetailViewController: UIViewController {
  
  var train: Train?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.backgroundColor = .white
    let trainLabel = TrainLabel()
    trainLabel.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
    trainLabel.layer.masksToBounds = true
    trainLabel.layer.cornerRadius = trainLabel.frame.size.height / 2
    if let trainLabelBGColor = train?.color {
      trainLabel.backgroundColor = UIColor(hex: "\(trainLabelBGColor)ff")
    } else {
      trainLabel.backgroundColor = UIColor(hex: "#767676FF")
    }
    trainLabel.text = train?.name

    navigationItem.titleView = trainLabel

    navigationItem.largeTitleDisplayMode = .never
    
//    navigationItem.title = train?.name  
  
//    if let trainLabelBGColor = train?.color {
//      navigationController?.navigationBar.barTintColor = UIColor(hex: "\(trainLabelBGColor)ff")
//      navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
//    } else {
//      navigationController?.navigationBar.barTintColor = UIColor(hex: "#767676FF")
//    }
  
    
    setupView()
  }
  
  func setupView() {
    
  }
  
}
