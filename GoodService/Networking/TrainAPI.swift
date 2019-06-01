//
//  Networking.swift
//  GoodService
//
//  Created by Chris Sanders on 5/18/19.
//  Copyright © 2019 Christopher Sanders. All rights reserved.
//

import Foundation

class TrainAPI {
  func getTrainStatus(completion: @escaping (TrainData) -> ()) {
    let urlString = "https://www.goodservice.io/api/stats"
    guard let url = URL(string: urlString) else { return }
    
    URLSession.shared.dataTask(with: url) { (data, response, err) in
      guard let data = data else { return }
      
      do {
        let trainData = try JSONDecoder().decode(TrainData.self, from: data)
        DispatchQueue.main.async {
          completion(trainData)
        }
      } catch let jsonErr {
        print("FAILED: ", jsonErr)
      }
      
    }.resume()
  }
  
  func getTrainInfo(completion: @escaping (TrainInfo) -> ()) {
    let urlString = "https://www.goodservice.io/api/info"
    guard let url = URL(string: urlString) else { return }
    
    URLSession.shared.dataTask(with: url) { (data, response, err) in
      
      if let err = err {
        print("FAILED: ", err)
        return
      }
      
      guard let data = data else { return }
      
      do  {
        let trainInfo = try JSONDecoder().decode(TrainInfo.self, from: data)
        DispatchQueue.main.async {
          completion(trainInfo)
        }
      } catch let error {
        print("FAILED:  ", error)
      }
    }.resume()
    
  }
  
}
