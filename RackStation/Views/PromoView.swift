//
//  PromoView.swift
//  RackStation
//
//  Created by Leo Dion on 3/8/22.
//

import SwiftUI


struct RemoteImage<PlaceHolderView : View> : View {
  
  @StateObject var imageObject : RemoteImageObject
  let placeholder : () -> PlaceHolderView
  init (url : URL,@ViewBuilder placeholder: @escaping () -> PlaceHolderView) {
    self._imageObject = StateObject(wrappedValue: .init(url: url))
    self.placeholder = placeholder
  }
  
  var body: some View {
    Group {
      if let uiImage = imageObject.image {
        Image(uiImage: uiImage).resizable()
      } else {
        placeholder()
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
      DispatchQueue.main.async {
        self.image = UIImage(contentsOfFile: url.path)
      }
      
    }
    task.resume()
    
    self.task = task
  }
  
}

struct CompatiableRemoteImage<PlaceHolderView : View> : View {
  internal init(url: URL, @ViewBuilder placeholder: @escaping () -> PlaceHolderView) {
    self.url = url
    self.placeholder = placeholder
  }
  
  let url : URL
  let placeholder : () -> PlaceHolderView
  var body: some View {
    Group {
      if #available(iOS 15.0, *) {
        AsyncImage(url: self.url, content: { image in
          image.resizable()
        }, placeholder: self.placeholder)
      } else {
        RemoteImage(url: url, placeholder: self.placeholder)
      }
    }
  }
}


struct PromoView: View {
    let design: PromoDesign

  var body: some View {
    CompatiableRemoteImage(url: design.imageURL) {
      ProgressView()
    }.scaledToFit().padding()
          
  }
}

struct PromoView_Previews: PreviewProvider {
    static var previews: some View {
        PromoView(design: .random())
    }
}
