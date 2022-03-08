
struct ChipsCollectionDesign : Codable {
  let chips : [ChipDesign]
  
  static func random (withCount count: Int = .random(in: 5...9)) -> ChipsCollectionDesign {
    return .init(chips: .init(factory: ChipDesign.random, count: count))
  }
}


