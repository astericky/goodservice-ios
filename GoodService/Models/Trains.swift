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
  let sevenX: Train
  let a: Train
  let b: Train
  let c: Train
  let d: Train
  let e: Train
  let f: Train
  let g: Train
  let h: Train
  let j: Train
  let l: Train
  let m: Train
  let n: Train
  let q: Train
  let r: Train
  let fs: Train
  let gs: Train
  let si: Train
  let w: Train
  let z: Train
  
  enum CodingKeys: String, CodingKey {
    case one    = "1"
    case two    = "2"
    case three  = "3"
    case four   = "4"
    case five   = "5"
    case six    = "6"
    case seven  = "7"
    case sevenX = "7X"
    case a      = "A"
    case b      = "B"
    case c      = "C"
    case d      = "D"
    case e      = "E"
    case f      = "F"
    case g      = "G"
    case h      = "H"
    case j      = "J"
    case l      = "L"
    case m      = "M"
    case n      = "N"
    case q      = "Q"
    case r      = "R"
    case fs     = "FS"
    case gs     = "GS"
    case si     = "SI"
    case w      = "W"
    case z      = "Z"
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
      h,
      j,
      l,
      m,
      n,
      q,
      r,
      fs,
      gs,
      si,
      w,
      z,
    ]
  }
}
