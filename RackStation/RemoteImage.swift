import Foundation
import SwiftUI

struct RemoteImage<PlaceHolderView: View>: View {
    @StateObject var imageObject: RemoteImageObject
    let placeholder: () -> PlaceHolderView
    init(url: URL, @ViewBuilder placeholder: @escaping () -> PlaceHolderView) {
        _imageObject = StateObject(wrappedValue: .init(url: url))
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
