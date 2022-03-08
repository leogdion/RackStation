//
//  ChipsCollectionView.swift
//  RackStation
//
//  Created by Leo Dion on 3/3/22.
//

import SwiftUI

struct ProductCollectionView: View {
    let design: ProductCollectionDesign
    var body: some View {
        VStack {
            HStack {
                Text(design.headerText).bold()
                Spacer()
                Button {} label: {
                    Text("View All").bold()
                }

            }.padding(.horizontal)
            ScrollView(.horizontal) {
                LazyHStack(spacing: 16.0) {
                    ForEach(self.design.products) { design in
                        ProductView(design: design)
                    }
                }.frame(height: 250.0).padding(.horizontal)
            }
        }
    }
}

struct ProductCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCollectionView(design: .random(headerText: "Bairy"))
    }
}
