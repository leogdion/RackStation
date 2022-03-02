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
          ForEach(design.areas) { design in
            HomeAreaView(design: design)
          }
        }.padding()
      }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
      HomeView(design: .init())
    }
}
