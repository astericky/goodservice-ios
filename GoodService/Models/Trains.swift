//
//  Trains.swift
//  GoodService
//
//  Created by Chris Sanders on 5/18/19.
//  Copyright © 2019 Christopher Sanders. All rights reserved.
//

import Foundation

#warning("Trains: Would it function better as an enum or some other structure?")
struct Trains: Decodable {
  let one: Train
  let two: Train
  let three: Train
  let four: Train
  let five: Train
  let six: Train
  let seven: Train
  let a: Train
  let b: Train
  let c: Train
  let d: Train
  let e: Train
  let f: Train
  let g: Train
  
  enum CodingKeys: String, CodingKey {
    case one   = "1"
    case two   = "2"
    case three = "3"
    case four  = "4"
    case five  = "5"
    case six   = "6"
    case seven = "7"
    case a     = "A"
    case b     = "B"
    case c     = "C"
    case d     = "D"
    case e     = "E"
    case f     = "F"
    case g     = "G"
  }
  
  func getTrains() -> [Train] {
    return [
      one,
      two,
      three,
      four,
      five,
      six,
      seven,
      a,
      b,
      c,
      d,
      e,
      f,
      g,
    ]
  }
}
