//
//  PickupStatusView.swift
//  RackStation
//
//  Created by Leo Dion on 3/3/22.
//

import SwiftUI

struct PickupStatusView: View {
  let design : PickupStatusDesign
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
        Text("Hello World")
      }.frame(height: 90.0)
    }
}

struct PickupStatusView_Previews: PreviewProvider {
    static var previews: some View {
      PickupStatusView(design: .init())
    }
}
