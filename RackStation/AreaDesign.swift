//
//  CardDesign.swift
//  RackStation
//
//  Created by Leo Dion on 3/2/22.
//

import Foundation

struct AreaDesign : Identifiable {
  init () {
    self.init(text: UUID().uuidString)
  }
  
  init(text: String) {
    self.text = text
  }
  
  let id : UUID = .init()
  let text : String
}
