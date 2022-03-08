import Foundation

struct PromoDesign : Codable, Identifiable {
  internal init(id: UUID = .init(), imageURL: URL) {
    self.id = id
    self.imageURL = imageURL
  }
  
  static let defaultURL = URL(string: "https://picsum.photos/900/300")!
  
  let id : UUID
  let imageURL : URL
  
  static func random () -> PromoDesign {
    self.init(imageURL: defaultURL)
  }
}

