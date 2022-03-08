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
          Text(design.headerText)
          Spacer()
          Button("View All") {
            
          }
        }
      ScrollView(.horizontal) {
        LazyHStack(spacing: 16.0){
          ForEach(self.design.products) { design in
            ProductView(design: design)
          }
        }.frame(height: 300.0)
      }
      }
    }
}

struct ProductCollectionView_Previews: PreviewProvider {
    static var previews: some View {
      ProductCollectionView(design: .random(headerText: "Bairy"))
    }
}
