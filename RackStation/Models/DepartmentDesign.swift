import Foundation

struct DepartmentDesign : Codable, Identifiable {
  internal init(id : UUID = .init(), iconName: String, labelText: String) {
    self.id = id
    self.iconName = iconName
    self.labelText = labelText
  }
  
  let id : UUID
  let iconName : String
  let labelText : String
  
  static func random () -> DepartmentDesign {
    let department = Department.random()
    let symbol = Symbols.random()
    return Self.init(iconName: symbol.rawValue, labelText: department.rawValue)
  }
}

struct DepartmentCollectionDesign : Codable {
  let departments : [DepartmentDesign]
  
  
  static func random (withCount count: Int = .random(in: 5...9)) -> DepartmentCollectionDesign {
    return .init(departments: .init(factory: DepartmentDesign.random, count: count))
  }
}

