//
//  CollectionView.swift
//  Meijer
//
//  Created by Leo Dion on 3/1/22.
//  Copyright © 2022 Meijer. All rights reserved.
//

import SwiftUI

extension Array {
  init(factory: () -> Element, count: Int) {
    let elements = (0..<count).map { _ in
      factory()
    }
    
    self.init(elements)
  }
}




class HomeViewDesign : ObservableObject {
  @Published var children = [HomeDesignItem].init(
    [
      .init(design: .pickupStatus(.random()), id: .init()),
      .init(design: .chips(.init(chips: .init(factory: {
      ChipDesign(symbol: .random())
      }, count: 5))), id: .init()),
      .init(design: .promo(.random())),
      .init(design: .products(.random(headerText: "Produss"))),
      .init(design: .departments(.random())),
      .init(design: .products(.random(headerText: "Bairy")))])
  
  init () {
    
  }
  init (children : [RootDesignable]) {
    self.children = children.map{
      .init(design: $0, id: .init())
    }
  }
}
