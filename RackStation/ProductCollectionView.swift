//
//  ChipsCollectionView.swift
//  RackStation
//
//  Created by Leo Dion on 3/3/22.
//

import SwiftUI

struct ProductCollectionView: View {
  let design : ProductCollectionDesign
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
//          ForEach(design.products, content: ChipView.init(design:)).frame(width: 72.0)
        }.frame(height: 72.0)
      }
      }
    }
}

struct ProductCollectionView_Previews: PreviewProvider {
    static var previews: some View {
      ProductCollectionView(design: .init(headerText: "Test", products: .init()))
    }
}
