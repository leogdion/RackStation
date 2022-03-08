//
//  DepartmentView.swift
//  RackStation
//
//  Created by Leo Dion on 3/8/22.
//

import SwiftUI

struct DepartmentView: View {
    let design: DepartmentDesign
    var body: some View {
        VStack {
            ZStack {
                Image(systemName: design.iconName).resizable().scaledToFit().padding(16.0).foregroundColor(.init(hue: .random(in: 0 ... 1.0), saturation: 1.0, brightness: 1.0))
                Circle().stroke()
            }.layoutPriority(1.0)
            Text(design.labelText).font(/*@START_MENU_TOKEN@*/ .caption/*@END_MENU_TOKEN@*/).lineLimit(1)
        }
    }
}

struct DepartmentView_Previews: PreviewProvider {
    static var previews: some View {
        DepartmentView(design: .random())
    }
}
