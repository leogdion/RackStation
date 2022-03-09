import Foundation

struct HomeDesignItem: Identifiable {
    internal init(design: RootDesignable, id: UUID = .init()) {
        self.design = design
        self.id = id
    }

    let design: RootDesignable
    let id: UUID
}

extension HomeDesignItem {
  func randomized () -> HomeDesignItem {
    HomeDesignItem(design: self.design.randomized(), id: self.id)
  }
}
