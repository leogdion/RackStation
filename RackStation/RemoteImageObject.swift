import Foundation
import SwiftUI

class RemoteImageObject: ObservableObject {
    let url: URL
    var task: URLSessionDownloadTask!
    @Published var image: UIImage?

    init(url: URL) {
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
