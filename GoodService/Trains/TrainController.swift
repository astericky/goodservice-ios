//
//  TrainsTableViewController.swift
//  GoodService
//
//  Created by Chris Sanders on 5/17/19.
//  Copyright © 2019 Christopher Sanders. All rights reserved.
//

import UIKit

class TrainController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
  @IBOutlet weak var tableView: UITableView!
  
  let trainCellIdentifier = "TrainCell"
  var trains = [Train]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.dataSource = self
    tableView.delegate = self
    let trainAPI = TrainAPI()
    trainAPI.getTrainStatus(completion: getTrainData)
  }
  
  // MARK: - Train Networking
  func getTrainData(with trainData: TrainData) {
    trains = trainData.status.getTrains()
    self.tableView.reloadData()
  }
  
  // MARK: - Table view data source
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return trains.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: trainCellIdentifier, for: indexPath) as! TrainCell

    cell.trainLabel!.text = trains[indexPath.row].name
    
    return cell
  }
}
