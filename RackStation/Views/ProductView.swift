//
//  ChipView.swift
//  RackStation
//
//  Created by Leo Dion on 3/7/22.
//

import SwiftUI

struct ProductView: View {
    static let formatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 2
        formatter.currencyCode = "USD"
        formatter.numberStyle = .currency
        return formatter
    }()

    let design: ProductDesign
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                RemoteAsyncImage(url: design.imageURL) {
                    ProgressView()
                }.scaledToFit().frame(width: 150, height: 150)

                Button {} label: {
                    ZStack {
                        Circle().foregroundColor(.blue)
                        Image(systemName: Symbols.plus.rawValue).foregroundColor(.white)
                    }
                }

                .frame(width: 64.0, height: 64.0, alignment: .bottomTrailing)
            }
            VStack(alignment: .leading, spacing: 8.0) {
                Text("\(Self.formatter.string(from: NSDecimalNumber(decimal: design.price))!)").font(.title2).fontWeight(.black).multilineTextAlignment(.leading)
                Text(design.labelText).lineLimit(2).multilineTextAlignment(.leading)
            }
        }
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(design: .random()).previewLayout(.fixed(width: 200, height: 300)).previewDevice(.none)
    }
}
