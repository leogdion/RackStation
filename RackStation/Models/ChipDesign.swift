import Foundation

struct ChipDesign : Codable, Identifiable {
  internal init(id: UUID = .init(), iconName: String, labelText: String) {
    self.id = id
    self.iconName = iconName
    self.labelText = labelText
  }
  
  init (symbol: Symbols) {
    self.init(iconName: symbol.rawValue, labelText: symbol.rawValue)
  }
  
  static func random () -> ChipDesign {
    return Self.init(symbol: .random())
  }
  
  let id : UUID
  let iconName : String
  let labelText : String
}

