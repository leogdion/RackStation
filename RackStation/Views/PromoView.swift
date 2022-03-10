//
//  PromoView.swift
//  RackStation
//
//  Created by Leo Dion on 3/8/22.
//

import SwiftUI


struct RemoteImage : View {
  @StateObject var imageObject : RemoteImageObject
  
  init (url : URL) {
    self._imageObject = StateObject(wrappedValue: .init(url: url))
  }
  
  var body: some View {
    Group {
      if let uiImage = imageObject.image {
        Image(uiImage: uiImage)
      } else {
        Rectangle()
      }
    }
  }
}
class RemoteImageObject : ObservableObject {
  let url : URL
  var task : URLSessionDownloadTask!
  @Published var image : UIImage?
  
  init (url: URL) {
    self.url = url
    
    let task = URLSession.shared.downloadTask(with: url) { url, _, _ in
      guard let url = url else {
        return
      }
      self.image = UIImage(contentsOfFile: url.path)
    }
    task.resume()
    
    self.task = task
  }
  
}


struct PromoView: View {
    let design: PromoDesign
    var body: some View {
      if #available(iOS 15.0, *) {
        AsyncImage(url: design.imageURL) { image in
          image.resizable()
        } placeholder: {
          ProgressView()
        }.scaledToFit().padding()
      } else {
        RemoteImage(url: design.imageURL)
      }
    }
}

struct PromoView_Previews: PreviewProvider {
    static var previews: some View {
        PromoView(design: .random())
    }
}
