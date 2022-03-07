//
//  ChipView.swift
//  RackStation
//
//  Created by Leo Dion on 3/7/22.
//

import SwiftUI

struct ProductView: View {
  let design : ProductDesign
    var body: some View {
      VStack{
        ZStack{
          Image(systemName: design.photoName).resizable().scaledToFit().padding(16.0)
          Circle().stroke()
        }.layoutPriority(1.0)
        Text(design.labelText).font(/*@START_MENU_TOKEN@*/.caption/*@END_MENU_TOKEN@*/).lineLimit(1)
      }
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
      ProductView(design: .init(price: 10.12, labelText: "test", photoName: "test"))
        .previewLayout(.fixed(width: 80.0, height: 80.0))
        
    }
}
