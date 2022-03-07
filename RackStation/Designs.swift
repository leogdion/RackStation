//
//  Designs.swift
//  RackStation
//
//  Created by Leo Dion on 3/3/22.
//

import Foundation

struct HomeDesign : Codable {
  let children : [RootDesignable]
 
}

struct HomeDesignItem : Identifiable {
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
  
  
  init(from decoder: Decoder) throws {
    var lastError : Error?
    
    if let design = decoder.decode(PickupStatusDesign.self, &lastError) {
      self = .pickupStatus(design)
    }
    
    if let design = decoder.decode(ChipsCollectionDesign.self, &lastError) {
      self = .chips(design)
    }
    
    if let lastError = lastError {
      throw lastError
    } else {
      throw DecodingError.dataCorrupted(.init(codingPath: [], debugDescription: "No Matching Design."))
    }
  }
}
struct PickupStatusDesign : Codable {
  
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

struct ProductDesign {
  let price : Decimal
  let labelText : String
  let photoName : String
}

struct ProductCollectionDesign {
  let headerText : String
  let products : [ProductDesign]
}
