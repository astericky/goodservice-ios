//
//  Train.swift
//  GoodService
//
//  Created by Chris Sanders on 5/18/19.
//  Copyright © 2019 Christopher Sanders. All rights reserved.
//

import Foundation

struct Train: Codable {
  let name: String
  let status: String
  let alternateName: String?
  
  enum CodingKeys: String, CodingKey {
    case name
    case status
    case alternateName = "alternate_name"
  }
}
