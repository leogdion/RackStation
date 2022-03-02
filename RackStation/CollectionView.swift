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
  @Published var areas = [AreaDesign].init(factory: AreaDesign.init, count: 200)
}
