import Foundation

struct PickupStatusDesign: Codable {
    internal init(locationName: String, status: PickupStatusDesign.Status, date: Date) {
        self.locationName = locationName
        self.status = status
        self.date = date
    }

    static func random() -> PickupStatusDesign {
        Self(locationName: Self.locations.randomElement()!, status: Bool.random() ? .deliver : .pickup, date: .init(timeIntervalSinceNow: .random(in: 1.0 ... 4.0) * 3600.0))
    }

    enum Status: String, Codable {
        case pickup = "Pickup at"
        case deliver = "Deliver from"
    }

    let status: Status
    let date: Date
    let locationName: String
    static let locations = """
    585 Forster Parkway
    48041 Hanson Terrace
    8712 Division Way
    67506 Jay Lane
    0603 Towne Alley
    63 Sage Trail
    4462 Wayridge Hill
    6880 Village Green Pass
    13 Corben Way
    093 Kensington Place
    30 Harper Parkway
    20532 Hanson Drive
    0 Pennsylvania Place
    8 Wayridge Avenue
    4 Tomscot Street
    4991 Maryland Point
    3519 Ryan Avenue
    77 Talmadge Plaza
    68695 Johnson Crossing
    47 Corscot Trail
    9116 Saint Paul Drive
    96 Bonner Alley
    79 Kensington Lane
    3 Manley Place
    514 Doe Crossing Street
    62439 Kenwood Lane
    1 Bluejay Terrace
    765 Kinsman Way
    7254 Helena Terrace
    07332 Mendota Place
    070 Packers Alley
    00 Lake View Point
    983 Dovetail Street
    8 Lien Pass
    48312 Norway Maple Road
    69 Dottie Circle
    44 Steensland Hill
    331 Glacier Hill Place
    444 Bluestem Alley
    75 Pawling Hill
    27 Lindbergh Terrace
    67491 Shelley Alley
    62745 Clarendon Plaza
    4 Blackbird Avenue
    0600 7th Drive
    833 Messerschmidt Junction
    18 Oriole Court
    91 Meadow Vale Terrace
    41471 Maple Pass
    3251 Beilfuss Terrace
    9 Green Ridge Drive
    5696 Eggendart Pass
    2 Fairview Parkway
    5897 Birchwood Junction
    782 Sunbrook Plaza
    78 Hooker Circle
    89732 Cordelia Junction
    40948 Utah Court
    70023 Service Avenue
    6580 La Follette Court
    44 Jenifer Alley
    9599 Arizona Terrace
    84820 Memorial Hill
    74 Luster Alley
    02 Drewry Way
    23965 Monument Point
    53 Lillian Lane
    33289 Hanover Plaza
    8 Kropf Junction
    652 Express Point
    17 Oneill Road
    9 Esch Center
    1 Talmadge Pass
    78073 International Road
    860 Memorial Crossing
    5 Toban Lane
    3 Judy Drive
    684 Monica Center
    059 Lien Park
    014 Oneill Circle
    07 Russell Trail
    512 Westend Avenue
    96650 Gerald Way
    60 Mosinee Court
    15724 Mandrake Lane
    1 Brentwood Drive
    3810 Loomis Center
    635 Grasskamp Parkway
    76 Di Loreto Center
    6 Springview Point
    870 Merrick Parkway
    0056 Iowa Trail
    4 Delladonna Court
    29010 Pleasure Parkway
    37 Oneill Center
    414 8th Drive
    7 Macpherson Trail
    9 Troy Crossing
    44 Eastlawn Pass
    39934 Buell Plaza
    7 Florence Place
    5 Hagan Court
    0815 Ilene Street
    746 Roxbury Lane
    8 Bowman Lane
    20 Sherman Crossing
    59 Susan Road
    794 New Castle Court
    75 Autumn Leaf Junction
    460 Clemons Place
    237 Sundown Way
    2 Carioca Crossing
    6 Westend Parkway
    09 Ronald Regan Place
    0 Sage Drive
    2 6th Hill
    03 Sycamore Street
    5558 Jenna Plaza
    889 Maryland Circle
    57102 2nd Pass
    67 Lunder Pass
    23387 Valley Edge Trail
    803 Bluestem Junction
    29897 Lillian Trail
    31 Lien Road
    94 Welch Pass
    27 Morningstar Lane
    """.components(separatedBy: .newlines)
}
