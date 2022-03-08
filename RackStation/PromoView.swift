//
//  PromoView.swift
//  RackStation
//
//  Created by Leo Dion on 3/8/22.
//

import SwiftUI

struct PromoView: View {
  let design : PromoDesign
    var body: some View {
      AsyncImage(url: design.imageURL) { image in
        image.resizable()
      } placeholder: {
        ProgressView()
      }.scaledToFit().padding()
    }
}

struct PromoView_Previews: PreviewProvider {
    static var previews: some View {
      PromoView(design: .random())
    }
}
