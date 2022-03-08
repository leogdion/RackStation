//
//  PickupStatusView.swift
//  RackStation
//
//  Created by Leo Dion on 3/3/22.
//

import SwiftUI

struct PickupStatusView: View {
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.timeStyle = .none
        formatter.dateFormat = "MMMM d"
        return formatter
    }()

    static let timeFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        formatter.dateFormat = .none
        return formatter
    }()

    let design: PickupStatusDesign
    var body: some View {
        HStack(alignment: .top, spacing: 8.0) {
            Image(systemName: Symbols.bag.rawValue)
            VStack(alignment: .leading, spacing: 8.0) {
                Text("Pickup at \(design.locationName)").bold()
                Text("Available \(PickupStatusView.dateFormatter.string(from: design.date)) starting at \(PickupStatusView.timeFormatter.string(from: design.date))").foregroundColor(.gray)
            }
            Spacer()
            Image(systemName: Symbols.chevron_r_g_t.rawValue)
        }.frame(height: 90.0).padding(.horizontal)
    }
}

struct PickupStatusView_Previews: PreviewProvider {
    static var previews: some View {
        PickupStatusView(design: .random())
    }
}
