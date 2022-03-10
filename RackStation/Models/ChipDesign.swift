import Foundation

struct ChipDesign: Codable, Identifiable, Randomizable {
    internal init(id: UUID = .init(), iconName: String, labelText: String) {
        self.id = id
        self.iconName = iconName
        self.labelText = labelText
    }

    init(symbol: Symbols) {
        self.init(iconName: symbol.rawValue, labelText: symbol.rawValue)
    }

    static func random() -> ChipDesign {
        Self(symbol: .random())
    }

    let id: UUID
    let iconName: String
    let labelText: String
  
  func randomize() -> ChipDesign {
    let other = Self.random()
    return .init(id: self.id, iconName: other.iconName, labelText: other.labelText)
  }
}
