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
        ZStack(alignment: .bottomTrailing){
          AsyncImage(url: design.imageURL) { image in
            image.resizable()
          } placeholder: {
            ProgressView()
          }.scaledToFit().frame(width: 150, height: 150)
          Button {
            
          } label: {
            ZStack{
              Circle().foregroundColor(.blue)
              Image(systemName: Symbols.plus.rawValue).foregroundColor(.white)
            }
          }

          .frame(width: 64.0, height: 64.0, alignment: .bottomTrailing)
        }
        VStack(alignment: .leading, spacing: 8.0){
          Text("$\(design.price.formatted())").font(.title2).fontWeight(.black).multilineTextAlignment(.leading)
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
