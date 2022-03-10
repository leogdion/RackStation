import SwiftUI

extension Array {
    init(factory: () -> Element, count: Int) {
        let elements = (0 ..< count).map { _ in
            factory()
        }

        self.init(elements)
    }
}

extension Array where Element == HomeDesignItem {
  func randomized () -> Self {
    return self.map{
      $0.randomized()
    }
  }
}



class HomeViewDesign: ObservableObject {
  static func randomChildren () -> [RootDesignable]{
     [RootDesignable].init(
        [
            .pickupStatus(.random()),
            .chips(.random()),
            .promo(.random()),
            .products(.random(headerText: "Pro-Duece")),
            .departments(.random()),
            .products(.random(headerText: "Bairy")),
        ])
  }
  @Published var children : [HomeDesignItem]

  fileprivate init(children : [HomeDesignItem]) {
    self.children = children
    
    Timer.publish(every: 5.0, tolerance: 10.0, on: .main, in: .default, options: nil).autoconnect().map{ _ in
      self.children.randomized()
    }.assign(to: &self.$children)
  }

  convenience init(designs: [RootDesignable]? = nil) {
    let designs = designs ?? Self.randomChildren()
        let children = designs.map {
          HomeDesignItem.init(design: $0, id: .init())
        }
      self.init(children: children)
    }
}
