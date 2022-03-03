//
//  HomeView.swift
//  Meijer
//
//  Created by Leo Dion on 3/1/22.
//  Copyright © 2022 Meijer. All rights reserved.
//

import SwiftUI


struct HomeView: View {
  @ObservedObject var design : HomeViewDesign
    var body: some View {
      ScrollView{
        LazyVStack{
          ForEach(design.children) { design in
            switch design.design {
            case let .pickupStatus(design):
              PickupStatusView(design: design)
            case let .chips(design):
              ChipsCollectionView(design: design)
            }
          }
        }.padding()
      }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
      HomeView(design: .init(children: [
        .pickupStatus(.init()),
        .chips(.init(chips: [])),
        .chips(.init(chips: [])),
        
      ]))
    }
}
