//
//  ChipsCollectionView.swift
//  RackStation
//
//  Created by Leo Dion on 3/3/22.
//

import SwiftUI

struct ChipsCollectionView: View {
  let design : ChipsCollectionDesign
    var body: some View {
      ScrollView(.horizontal) {
        
        LazyHStack{
          ForEach(design.chips, content: ChipView.init(design:))
        }.frame(height: 100.0)
      }
    }
}

struct ChipsCollectionView_Previews: PreviewProvider {
    static var previews: some View {
      ChipsCollectionView(design: .init(chips: [
        .init(iconName: "pencil", labelText: "Pencil"),
        .init(iconName: "pencil", labelText: "Pencil"),
        .init(iconName: "pencil", labelText: "Pencil"),
        .init(iconName: "pencil", labelText: "Pencil"),
        .init(iconName: "pencil", labelText: "Pencil"),
        .init(iconName: "pencil", labelText: "Pencil")
      ]))
    }
}
