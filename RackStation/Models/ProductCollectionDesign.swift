
struct ProductCollectionDesign : Codable {
  internal init(headerText: String, products: [ProductDesign]) {
    self.headerText = headerText
    self.products = products
  }
  
  let headerText : String
  let products : [ProductDesign]
  
  
  static func random (headerText : String, withCount count: Int = .random(in: 5...9)) -> ProductCollectionDesign {
    return .init(headerText: headerText, products: .init(factory: ProductDesign.random, count: count))
  }
}
