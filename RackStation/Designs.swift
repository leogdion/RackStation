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


struct ChipDesign : Codable{
  let iconName : String
  let labelText : String
}

struct ChipsCollectionDesign : Codable {
  let chips : [ChipDesign]
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
