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
  
  #warning("Create and ContentView for segmentedControl")
  lazy var segmentedControl: UISegmentedControl = {
    let items = ["Current Status", "Stats"]
    let control = UISegmentedControl(items: items)
    control.selectedSegmentIndex = 0
    control.addTarget(self, action: #selector(handleSegmentChanged), for: .touchUpInside)
    return control
  }()
  
  @objc fileprivate func handleSegmentChanged(_ sender: UISegmentedControl) {
    print(sender.selectedSegmentIndex)
    if sender.selectedSegmentIndex == 0 {
      showCurrentStatusView()
    } else if sender.selectedSegmentIndex == 1 {
      showStatsView()
    }
  }
  
  fileprivate func showCurrentStatusView() {
  
  }
  
  fileprivate func showStatsView() {
    
  }
  
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
    view.addSubview(segmentedControl)
    segmentedControl.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 100, left: 16, bottom: 0, right: 16))
  }
  
}
