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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ChipsCollectionView_Previews: PreviewProvider {
    static var previews: some View {
      ChipsCollectionView(design: .init(chips: []))
    }
}
