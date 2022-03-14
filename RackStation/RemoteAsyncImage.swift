import Foundation
import SwiftUI

struct RemoteAsyncImage<PlaceHolderView: View>: View {
    internal init(url: URL, @ViewBuilder placeholder: @escaping () -> PlaceHolderView) {
        self.url = url
        self.placeholder = placeholder
    }

    let url: URL
    let placeholder: () -> PlaceHolderView
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
