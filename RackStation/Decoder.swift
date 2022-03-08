
extension Decoder {
  func decode<CodableType : Codable>(_ type: CodableType.Type, _ lastError: inout Error?) -> CodableType? {
    do {
      return try CodableType(from: self)
    } catch {
      lastError = error
    }
    return nil
  }
  
  
  func decode<CodableType : Codable, OtherType>(_ type: CodableType.Type, _ otherType : @escaping (CodableType) -> OtherType, _ lastError: inout Error?) -> OtherType? {
    do {
      let value = try CodableType(from: self)
      return otherType(value)
    } catch {
      lastError = error
    }
    return nil
  }
}

