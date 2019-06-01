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
    tableView.allowsMultipleSelection = false
    
    getTrainInfo()
  }
  
//  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//    let trainDetailViewController = segue.destination as! TrainDetailViewController
//    if let indexPath = tableView.indexPath(for: sender as! TrainCell) {
//      trainDetailViewController.train = trains[indexPath.row]
//    }
//  }
  
  // MARK: - Train Networking
  func getTrainInfo() {
    let trainAPI = TrainAPI()
    trainAPI.getTrainInfo(completion: getTrains)
  }
  
  func getTrains(from trainInfo: TrainInfo) {
    trains = trainInfo.routes
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
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let trainDetails = TrainDetailViewController()
    trainDetails.train = trains[indexPath.row]
    navigationController?.pushViewController(trainDetails, animated: true)
  }
  
}
