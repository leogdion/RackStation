
enum RootDesignable : Codable {
  
  case pickupStatus(PickupStatusDesign)
  case chips(ChipsCollectionDesign)
  case products(ProductCollectionDesign)
  case departments(DepartmentCollectionDesign)
  case promo(PromoDesign)
  
  
  
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
    
    if let design = decoder.decode(DepartmentCollectionDesign.self, &lastError) {
      self = .departments(design)
    }
    
    if let value = decoder.decode(PromoDesign.self, Self.promo, &lastError) {
      self = value
    }
    
    if let lastError = lastError {
      throw lastError
    } else {
      throw DecodingError.dataCorrupted(.init(codingPath: [], debugDescription: "No Matching Design."))
    }
  }
}

