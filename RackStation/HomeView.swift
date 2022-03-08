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
        LazyVStack(spacing: 20.0){
          ForEach(design.children) { design in
            switch design.design {
            case let .pickupStatus(design):
              PickupStatusView(design: design)
            case let .chips(design):
              ChipsCollectionView(design: design)
            case let .products(design):
              ProductCollectionView(design: design)
            case let .departments(design):
              DepartmentCollectionView(design: design)
            case let .promo(design):
              PromoView(design: design)
            }
          }
        }.padding(.vertical)
      }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
      HomeView(design: .init(children: [
        .pickupStatus(.random()),
        .chips(.random()),
        .chips(.random()),
        .products(.random(headerText: "Bairy"))
      ]))
    }
}
