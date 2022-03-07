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
      VStack{
        HStack{
          Text("Shop By Department")
          Spacer()
          Button("View All") {
            
          }
        }
      ScrollView(.horizontal) {
        LazyHStack(spacing: 16.0){
          ForEach(design.chips, content: ChipView.init(design:)).frame(width: 72.0)
        }.frame(height: 72.0)
      }
      }
    }
}

struct ChipsCollectionView_Previews: PreviewProvider {
    static var previews: some View {
      ChipsCollectionView(design: .init(chips: .init(factory: ChipDesign.random, count: 7)
          
                                       ))
    }
}
