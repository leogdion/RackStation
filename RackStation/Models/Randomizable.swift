//
//  Randomizable.swift
//  RackStation
//
//  Created by Leo Dion on 3/9/22.
//

import Foundation

protocol Randomizable {
  func randomize () -> Self
}

extension Array where Element : Randomizable {
  func randomize () -> Self {
    self.map{
      $0.randomize()
    }
  }
}
