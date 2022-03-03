//
//  HomeCardView.swift
//  Meijer
//
//  Created by Leo Dion on 3/2/22.
//  Copyright © 2022 Meijer. All rights reserved.
//

import SwiftUI

struct HomeAreaView: View {
  let design : AreaDesign
    var body: some View {
      ZStack{
        RoundedRectangle(cornerRadius: 8.0)
          .foregroundStyle(
            .linearGradient(
            colors: [.yellow, .blue],
            startPoint: .top,
            endPoint: .bottom
          )
        )
        Text(design.text)
      }.frame(height: 90.0)
    }
}

struct HomeCardView_Previews: PreviewProvider {
    static var previews: some View {
      HomeAreaView(design: .init())
        .previewLayout(.fixed(width: 160, height: 90.0))
        
    }
}
