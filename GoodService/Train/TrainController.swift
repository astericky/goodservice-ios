//
//  TrainsTableViewController.swift
//  GoodService
//
//  Created by Chris Sanders on 5/17/19.
//  Copyright © 2019 Christopher Sanders. All rights reserved.
//

import UIKit

class TrainController: UITableViewController {
  
  let trainCellIdentifier = "TrainCell"
  var trains = [Train]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    navigationController?.navigationBar.prefersLargeTitles = true
    navigationItem.title = "Trains"
    tableView.register(TrainCell.self, forCellReuseIdentifier: trainCellIdentifier)
    
    getTrainData()
  }
  
//  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//    let trainDetailViewController = segue.destination as! TrainDetailViewController
//    if let indexPath = tableView.indexPath(for: sender as! TrainCell) {
//      trainDetailViewController.train = trains[indexPath.row]
//    }
//  }
  
  // MARK: - Train Networking
  func getTrainData() {
    let trainAPI = TrainAPI()
    trainAPI.getTrainStatus(completion: getTrainData)
  }
  
  func getTrainData(with trainData: TrainData) {
    trains = trainData.status.getTrains()
    tableView.reloadData()
  }
  
  // MARK: - Table view data source
  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return trains.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: trainCellIdentifier, for: indexPath) as! TrainCell
    
    cell.train = trains[indexPath.row]
    
    return cell
  }
  
}
