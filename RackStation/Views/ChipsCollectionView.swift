//
//  ChipsCollectionView.swift
//  RackStation
//
//  Created by Leo Dion on 3/3/22.
//

import SwiftUI

struct ChipsCollectionView: View {
    let design: ChipsCollectionDesign
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 16.0) {
                ForEach(design.chips, content: ChipView.init(design:)).frame(width: 72.0)
            }.frame(height: 72.0).padding(.horizontal)
        }.padding(.vertical).overlay(Divider(), alignment: .top)
            .overlay(Divider(), alignment: .bottom)
    }
}

struct ChipsCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        ChipsCollectionView(design: .init(chips: .init(factory: ChipDesign.random, count: 7)

        ))
    }
}
