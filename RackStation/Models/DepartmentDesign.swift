import Foundation

struct DepartmentDesign: Codable, Identifiable, Randomizable {
    internal init(id: UUID = .init(), iconName: String, labelText: String) {
        self.id = id
        self.iconName = iconName
        self.labelText = labelText
    }

    let id: UUID
    let iconName: String
    let labelText: String

    static func random() -> DepartmentDesign {
        let department = Department.random()
        let symbol = Symbols.random()
        return Self(iconName: symbol.rawValue, labelText: department.rawValue)
    }

    func randomize() -> DepartmentDesign {
        let other = Self.random()
        return Self(id: id, iconName: other.iconName, labelText: other.labelText)
    }
}
