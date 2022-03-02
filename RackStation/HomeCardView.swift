//
//  HomeCardView.swift
//  Meijer
//
//  Created by Leo Dion on 3/2/22.
//  Copyright © 2022 Meijer. All rights reserved.
//

import SwiftUI

struct HomeCardView: View {
  let design : CardDesign
    var body: some View {
      ZStack{
      Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        RoundedRectangle(cornerRadius: 8.0)
          .foregroundStyle(
            .linearGradient(
            colors: [.yellow, .blue],
            startPoint: .top,
            endPoint: .bottom
          )
        )
      }
    }
}

struct HomeCardView_Previews: PreviewProvider {
    static var previews: some View {
      HomeCardView(design: .init())
        .previewLayout(.fixed(width: 160, height: 90.0))
        
    }
}
