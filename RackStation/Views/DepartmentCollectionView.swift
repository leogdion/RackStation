//
//  ChipsCollectionView.swift
//  RackStation
//
//  Created by Leo Dion on 3/3/22.
//

import SwiftUI

struct DepartmentCollectionView: View {
  let design : DepartmentCollectionDesign
    var body: some View {
      VStack{
        HStack{
          Text("Shop By Department").bold()
          Spacer()
          Button {
            
          } label: {
            Text("View All").bold()
          }
        }.padding(.horizontal)
      ScrollView(.horizontal) {
        LazyHStack(spacing: 16.0){
          ForEach(
            design.departments,
            content: DepartmentView.init(design:)
          ).frame(width: 72.0)
        }.frame(height: 72.0).padding(.horizontal)
      }
      }.padding(.vertical)
    }
}

struct DepartmentCollectionView_Previews: PreviewProvider {
    static var previews: some View {
      DepartmentCollectionView(design: .random())
                                       
    }
}
