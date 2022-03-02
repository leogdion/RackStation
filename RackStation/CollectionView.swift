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
  @Published var cards = [CardDesign].init(factory: CardDesign.init, count: 200)
}

struct CollectionView: View {
  let cards : [CardDesign]
    var body: some View {
      
      LazyVGrid(columns: [
        GridItem(.adaptive(minimum: 90, maximum: 160.0))
      ], alignment: .leading){
        ForEach(cards) {
          HomeCardView(design: $0)
        }
      }
    }
}

struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
      CollectionView(cards: [CardDesign].init(factory: CardDesign.init, count: 20))
    }
}
