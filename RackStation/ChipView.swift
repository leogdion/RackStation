//
//  ChipView.swift
//  RackStation
//
//  Created by Leo Dion on 3/7/22.
//

import SwiftUI

struct ChipView: View {
  let design : ChipDesign
    var body: some View {
      VStack{
        ZStack{
          Image(systemName: design.iconName).resizable().scaledToFit()
          Circle().stroke()
        }
        Text(design.labelText)
      }
    }
}

struct ChipView_Previews: PreviewProvider {
    static var previews: some View {
      ChipView(design: .init(iconName: "pencil", labelText: "Pencil"))
        .previewLayout(.fixed(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/))
        
    }
}
