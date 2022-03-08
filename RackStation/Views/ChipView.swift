//
//  ChipView.swift
//  RackStation
//
//  Created by Leo Dion on 3/7/22.
//

import SwiftUI

struct ChipView: View {
    let design: ChipDesign
    var body: some View {
        VStack {
            ZStack {
                Image(systemName: design.iconName).resizable().scaledToFit().padding(16.0)
                Circle().stroke()
            }.layoutPriority(1.0)
            Text(design.labelText).font(/*@START_MENU_TOKEN@*/ .caption/*@END_MENU_TOKEN@*/).lineLimit(1)
        }
    }
}

struct ChipView_Previews: PreviewProvider {
    static var previews: some View {
        ChipView(design: .init(iconName: "pencil", labelText: "Pencil"))
            .previewLayout(.fixed(width: 80.0, height: 80.0))
    }
}
