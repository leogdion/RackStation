struct ChipsCollectionDesign: Codable, Randomizable {
    func randomize() -> ChipsCollectionDesign {
        Self(chips: chips.randomize())
    }

    let chips: [ChipDesign]

    static func random(withCount count: Int = .random(in: 5 ... 9)) -> ChipsCollectionDesign {
        .init(chips: .init(factory: ChipDesign.random, count: count))
    }
}
