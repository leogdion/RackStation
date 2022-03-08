import Foundation

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

