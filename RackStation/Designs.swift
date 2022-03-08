//
//  Designs.swift
//  RackStation
//
//  Created by Leo Dion on 3/3/22.
//

import Foundation
import Accessibility

struct HomeDesign : Codable {
  let children : [RootDesignable]
 
}

struct HomeDesignItem : Identifiable {
  internal init(design: RootDesignable, id: UUID = .init()) {
    self.design = design
    self.id = id
  }
  
  let design : RootDesignable
  let id : UUID
}

extension Decoder {
  func decode<CodableType : Codable>(_ type: CodableType.Type, _ lastError: inout Error?) -> CodableType? {
    do {
      return try CodableType(from: self)
    } catch {
      lastError = error
    }
    return nil
  }
}

enum RootDesignable : Codable {
  
  case pickupStatus(PickupStatusDesign)
  case chips(ChipsCollectionDesign)
  case products(ProductCollectionDesign)
  
  
  init(from decoder: Decoder) throws {
    var lastError : Error?
    
    if let design = decoder.decode(PickupStatusDesign.self, &lastError) {
      self = .pickupStatus(design)
    }
    
    if let design = decoder.decode(ChipsCollectionDesign.self, &lastError) {
      self = .chips(design)
    }
    
    if let design = decoder.decode(ProductCollectionDesign.self, &lastError) {
      self = .products(design)
    }
    
    if let lastError = lastError {
      throw lastError
    } else {
      throw DecodingError.dataCorrupted(.init(codingPath: [], debugDescription: "No Matching Design."))
    }
  }
}
struct PickupStatusDesign : Codable {
  internal init(status: PickupStatusDesign.Status, date: Date) {
    self.status = status
    self.date = date
  }

  static func random () -> PickupStatusDesign {
    Self.init(status: Bool.random() ? .deliver : .pickup, date: .init(timeIntervalSinceNow: .random(in: 1.0...4.0)*3600.0))
  }
  enum Status : String, Codable {
    case pickup = "Pickup at"
    case deliver = "Deliver from"
  }
  let status : Status
  let date : Date
}


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

struct ChipsCollectionDesign : Codable {
  let chips : [ChipDesign]
  
  static func random (withCount count: Int = .random(in: 5...9)) -> ChipsCollectionDesign {
    return .init(chips: .init(factory: ChipDesign.random, count: count))
  }
}


struct PromoDesign {
  let imageURL : URL
}

struct DepartmentDesign {
  let iconName : String
  let labelText : String
}

struct DepartmentCollectionDesign {
  let departments : [DepartmentDesign]
}

struct ProductDesign  : Codable, Identifiable {
  static let defaultURL = URL(string: "https://picsum.photos/300")!
  internal init(id: UUID = .init(), price: Decimal, labelText: String, imageURL: URL = ProductDesign.defaultURL) {
    self.id = id
    self.price = price
    self.labelText = labelText
    self.imageURL = imageURL
  }
  
  let id : UUID
  let price : Decimal
  let labelText : String
  let imageURL : URL
  
  
  
  static func random () -> ProductDesign {
    let price = Decimal(Double(Int.random(in: 100..<10000))/100.0)
    return Self.init(price: price, labelText: "Meijer 2% Reduced Fat Milk, Gallon")
  }
  
}

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
